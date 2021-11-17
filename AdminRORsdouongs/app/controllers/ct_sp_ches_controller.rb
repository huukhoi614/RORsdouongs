class CtSpChesController < ApplicationController
	before_action :set_ct_sp_ch, only: %i[ show edit update destroy ]
  
  def show

  end

  def index
  	@ct_sp_ch = CtSpCh.all
  end

  def edit
  end
  def new
  	@ct_sp_ch = CtSpCh.new
  end

  def create
  	if(session[:phone_user] == nil)
  		redirect_to login_url
  	else
	  	khachhang = Khachhang.checkphone(session[:phone_user]) 
	   @dathang = current_dathang(khachhang.id)

	    
	    ctspham = Ctspham.find_by_id(params[:ctspham_id])
	    idbanggium = Banggium.find_by_ctspham_id(params[:ctspham_id])
	    banggiumx = Banggium.find(idbanggium.id)
	    soluong = params[:soluong]
      sem = params[:subchecked]

	    
      
	    @ct_sp_ch = @dathang.ct_sp_ches.build(:ctspham => ctspham,:soluong => soluong)
      
     
	    respond_to do |format|    
	        if @ct_sp_ch.save
            if(sem != nil)
              sem.each do |sem|
                counter = 1
                 while sem[counter] != nil
                  @chonthemxx = create_ctchonmua(sem[counter],@ct_sp_ch.id)  
                  counter = counter + 1
                 end
              end
            end
	          format.html { redirect_to(@ct_sp_ch.dathang, :notice => 'Line item was successfully created') }
	          format.json { render :show, status: :created, location: @line_item }
	        else
	          format.html { render :new }
	          format.json { render json: @ct_sp_ch.errors, status: :unprocessable_entity }
	        end
	    end
    end
  end

  # PATCH/PUT /line_items/1 or /line_items/1.json
  def update
    respond_to do |format|
      if @ct_sp_ch.update(ct_sp_ch_params)
        format.html { redirect_to @ct_sp_ch, notice: "Line item was successfully updated." }
        format.json { render :show, status: :ok, location: @line_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ct_sp_ch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_items/1 or /line_items/1.json
  def destroy
    @chonthems = Ctchonthem.where(:ct_sp_ch_id => @ct_sp_ch.id)
    if(@chonthems!= nil)
      destroy_ctchonthem(@ct_sp_ch.id)
    end
    @ct_sp_ch.destroy
    respond_to do |format|
      format.html { redirect_to dathang_url(@ct_sp_ch.dathang_id), notice: "Line item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ct_sp_ch
      @ct_sp_ch = CtSpCh.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ct_sp_ch_params
      params.require(:ct_sp_ch).permit(:ctspham_id, :dathang_id, :soluong, :giact)
    end
end

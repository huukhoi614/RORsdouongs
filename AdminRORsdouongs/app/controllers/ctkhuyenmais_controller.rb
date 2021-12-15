class CtkhuyenmaisController < ApplicationController
  def index
  end

  def new
  	@ctkhuyenmai = Ctkhuyenmai.new
  end

  def show
  end

  def edit
  end
  def create
  	
  	@ctkhuyenmai = Ctkhuyenmai.new(khuyenmai_params)
    respond_to do |format|
      if @ctkhuyenmai.save()
        format.html { redirect_to khuyenmais_url, notice: "Khuyenmai was successfully created." }
        format.json { render :show, status: :created, location: khuyenmai_url }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @khuyenmai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dathangs/1 or /dathangs/1.json
  def update
    respond_to do |format|
          if @ctkhuyenmai.update()
           
            format.html { redirect_to khuyenmais_url, notice: "Dathang was successfully updated." }
            format.json { render :show, status: :ok, location: @khuyenmai }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @khuyenmai.errors, status: :unprocessable_entity }
          end
       
    
    end
  end
  private
	# Use callbacks to share common setup or constraints between actions.
	def set_ctkhuyenmai
	  	@ctkhuyenmai = Ctkhuyenmai.find(params[:id])
	end


	# Only allow a list of trusted parameters through.
	def ctkhuyenmai_params
	  params.require(:ctkhuyenmai).permit(:id, :khuyenmai_id, :sanpham_id, :tylegiam)
	end
end

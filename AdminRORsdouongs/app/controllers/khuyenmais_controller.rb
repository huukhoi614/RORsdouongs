class KhuyenmaisController < ApplicationController
  def show
  end

  def new
  end

  def index
  	@khuyenmais= Khuyenmai.all()

  end

  def edit
  end
  
  def create
    respond_to do |format|
      if @khuyenmai.save
        format.html { redirect_to khuyenmai_url, notice: "Dathang was successfully created." }
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
          if @khuyenmai.update()
            session[:dathang_id] = nil
            format.html { redirect_to khuyenmais_url, notice: "Dathang was successfully updated." }
            format.json { render :show, status: :ok, location: @dathang }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @khuyenmai.errors, status: :unprocessable_entity }
          end
       
    
    end
  end
  private
	# Use callbacks to share common setup or constraints between actions.
	def set_khuyenmai
	  	@khuyenmai = Khuyenmai.find(params[:id])
	end


	# Only allow a list of trusted parameters through.
	def khuyenmai_params
	  params.require(:khuyenmai).permit(:id,:tendot, :ngayBD, :ngayKT)
	end
end

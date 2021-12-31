module Api::V1
  class KhachhangsController < ActionController::API
  
	def index
		@khachhangs = Khachhang.select(:id, :tenKH, :diachi, :sodienthoai)
		render json: @khachhangs
	end

    def show
        @khachhang = Khachhang.select(:id, :tenKH, :diachi, :sodienthoai).find(params[:id])
        render json: @khachhang
    end

    def new
        @khachhang = Khachhang.new
    end

    def edit
        @khachhang = Khachhang.find(params[:id])
    end

    def create 
        khachhang = Khachhang.new(khachhang_params)
        if khachhang.save
            render json: "Success"
        else
            render json: "Error! Phone number already exist"
        end
    end

    def update
        
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_khachhang
      @khachhang = Khachhang.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def khachhang_params
      params.require(:khachhang).permit(:tenKH, :sodienthoai, :diachi, :hashed_password, :salt, :password, :password_confirmation, :point)
    end

	end
end

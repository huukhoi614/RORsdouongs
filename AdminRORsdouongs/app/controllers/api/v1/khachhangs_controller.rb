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
        khachhang = Khachhang.create(
            {
                tenKH: params[:tenKH],
                diachi: params[:diachi],
                sodienthoai: params[:sodienthoai]
            }
        )
        if khachhang.save
            render json: "Success"
        else
            render json: "Error! Phone number already exist"
        end
    end

    def update
        khachhang = Khachhang.find(params[:id])
        if khachhang.update(
            {
                tenKH: params[:tenKH],
                diachi: params[:diachi],
            }
        )
        render json: "Update Success"
        else
            render json: "Update Error"
        end
    end

	end
end

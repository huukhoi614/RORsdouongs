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
        render json: @khachhang
    end

    def edit
    end

    def create
    end

    def update
    end

	end
end

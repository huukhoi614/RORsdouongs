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
        khachhang = Khachhang.create({
            sodienthoai:params[:sodienthoai],
            tenKH:params[:tenKH],
            password:params[:password],
            password_confirmation:params[:password_confirmation]   
        })
        if khachhang.save
            render json: "Success"
        else
            render json: "Error! Phone number already exist"
        end
    end

    def update
        
    end
end

end

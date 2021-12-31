module Api::V1
	class CuahangsController < ActionController::API
	
	def index
		@cuahangs =  Cuahang.all
		render json:  @cuahangs
	end
	
	def show
		@cuahang = Cuahang.select(:id, :tencuahang, :diachi).find(params[:id])
		render json: @cuahang
	end

	def new
		store = Cuahang.new 
	end

	def create
		store = Cuahang.create(
            {
                tencuahang: params[:tencuahang],
                diachi: params[:diachi],
                sodienthoai: params[:sodienthoai]
            }
        )
        if store.save
            render json: "Success"
        else
            render json: "Error! Phone number already exist"
        end
	end



	end
end

module Api::V1
	class CuahangsController < ActionController::API
	
	def index
		@cuahangs =  Cuahang.select(:id, :tencuahang, :diachi)
		render json:  @cuahangs
	end
	
	def show
		@cuahang = Cuahang.select(:id, :tencuahang, :diachi).find(params[:id])
		render json: @cuahang
	end




	end
end

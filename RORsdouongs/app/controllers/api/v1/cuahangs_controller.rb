module Api::V1
  class CuahangsController < ActionController::API
  
	  def show
	  end

	  def index
	  	@cuahangs =  Cuahang.all

	  	render json:  JSON.pretty_generate({ cuahangs: @cuahangs.as_json(only: [:id, :tencuahang, :diachi]) })
	  end

	  def edit
	  end
	  
	  def new
	  end
	end
end

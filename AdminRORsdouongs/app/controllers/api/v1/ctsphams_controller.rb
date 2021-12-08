module Api::V1
  class CtsphamsController < ActionController::API
  
	  def index
		@ctsphams = Ctspham.select(:id,:sanpham_id,:size_id)
		render json: @ctsphams       
	  end

	  def show
		@ctspham = Ctspham.select(:id,:sanpham_id,:size_id).find(params[:id])
		render json: @ctspham
	  end
	end
end

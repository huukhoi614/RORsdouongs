module Api::V1
  class CtsphamsController < ActionController::API
  
	  def index
		@ctsphams = Ctspham.joins(:size,:banggia).select(:id,:tensize,:gia)
		render json: @ctsphams
	  end

	  def show
		sanpham = Sanpham.find(params[:id])
		@ctspham = Ctspham.joins(:size,:banggia).select(:id,:tensize,:gia).where(sanpham_id: sanpham.id)
		render json: @ctspham
	  end
	end
end

module Api::V1
  class CtsphamsController < ActionController::API
  
	  def index
		@ctsphams = Ctspham.select(:id,:sanpham_id,:size_id)
		render json: @ctsphams
	  end

	  def show
		sanpham = Sanpham.find(params[:id])
		@ctspham = Ctspham.joins(:banggia, :size).where(sanpham_id: sanpham.id).select(:id,:tensize,:gia)
		render json: @ctspham
	  end
	end
end

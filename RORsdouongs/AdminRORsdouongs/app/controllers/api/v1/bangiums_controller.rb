module Api::V1
  class BangiumsController < ActionController::API
  
	def index
		@bangiums = Banggium.select(:id, :gia, :ctspham_id)
		render json: @bangiums
	end
	
	def show
		ctsanpham = Ctspham.find(params[:id])
		@bangiumsx = Banggium.where(ctspham_id: ctsanpham.id).last
		@bangiums = Banggium.select(:id, :gia, :ctspham_id).find(@bangiumsx.id)
		render json: @bangiums
	end

	end
end

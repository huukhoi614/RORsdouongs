module Api::V1
  class BangiumsController < ActionController::API
  
	def index
		@bangiums = Banggium.select(:id, :gia, :ctspham_id)
		render json: @bangiums
	end
	
	def show
		sanpham = Sanpham.find(params[:id])
		@ctsanphams = Ctspham.where(sanpham_id: sanpham.id)
		ctsanphamss1	= Ctspham.where(sanpham_id: sanpham.id, size_id: 1).last
		ctsanphams1 = Ctspham.find(ctsanphamss1.id)
		@bangiumsx = Banggium.where(ctspham_id: ctsanphams1.id).last
		@bangiums = Banggium.select(:id, :gia, :ctspham_id).find(@bangiumsx.id)
		render json: @bangiums
	end

	def gia_size
		# sanpham = Sanpham.find(params[:sanpham_id])
		# size = Size.find(params[:size_id])
		# ctsanphams = Ctspham.where(sanpham_id: sanpham.id).where(size_id: size_id)
		# ctsanphams1 = Ctspham.find(ctsanphams.id)
		# @bangiumsx = Banggium.where(ctspham_id: ctsanphams1.id).last
		# @bangiumss = Banggium.select(:id, :gia, :ctspham_id).find(@bangiumsx.id)
		# render json: @bangiumss
	end

	end
end

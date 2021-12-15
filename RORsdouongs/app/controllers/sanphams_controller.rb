class SanphamsController < ApplicationController
	before_action :set_sanpham, only: %i[ show edit update destroy ]
  def index
    
  	@sanphams = Sanpham.all()
  	@loaisp = Loaisp.all()
  end

  def showtheosize
  end
  def show
  	
  	sanpham = Sanpham.find(params[:id])
    @tylegiam = checksukien(sanpham.id).to_f
  	@chonthems = Chonthem.all()
  	@sizes = Size.all()
  	@ctsanphams = Ctspham.where(sanpham_id: sanpham.id)
  	ctsanphamss1	= Ctspham.where(sanpham_id: sanpham.id, size_id: 1).last
  	ctsanphams1 = Ctspham.find(ctsanphamss1.id)
  	@bangiumsx = Banggium.where(ctspham_id: ctsanphams1.id).last
    @bangiums = Banggium.find(@bangiumsx.id)
  	
  end
private
	# Use callbacks to share common setup or constraints between actions.
	def set_sanpham
	  @sanpham = Sanpham.find(params[:id])
	end


	# Only allow a list of trusted parameters through.
	def sanpham_params
	  params.require(:sanpham).permit(:tensanpham, :mota, :anh, :loaisp_id)
	end
end

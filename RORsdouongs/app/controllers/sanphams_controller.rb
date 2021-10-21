class SanphamsController < ApplicationController
	before_action :set_sanpham, only: %i[ show edit update destroy ]
  def index
  	@sanphams = Sanpham.all()
  	@loaisp = Loaisp.all()
  end

  def show
  	tam = 0
  	sanpham = Sanpham.find(params[:id])
  	@chonthems = Chonthem.all()
  	@sizes = Size.all()
  	@ctsanphams = Ctspham.where(sanpham_id: sanpham.id)
  	if tam != 0
  		ctsanphams1 = Ctspham.where(sanpham_id: sanpham.id, size_id: tam)

  	else
  		ctsanphams1	= Ctspham.where(sanpham_id: sanpham.id, size_id: 1)
  	end
  	@bangiums = Banggium.where(ctspham_id: ctsanphams1.ids)
  	
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

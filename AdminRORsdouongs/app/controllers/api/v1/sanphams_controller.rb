module Api::V1
  class SanphamsController < ActionController::API
  
	  def index
	  	@sanphams =  Sanpham.select(:loaisp_id, :id, :tensanpham, :anh, :mota)
	  	render json:  @sanphams, include: [:loaisp], methods: [:filtered_ctspham]
	  end

	  def show
		sanpham = Sanpham.find(params[:id])
		@chonthems = Chonthem.all()
		@sizes = Size.all()
		@ctsanphams = Ctspham.where(sanpham_id: sanpham.id)
		ctsanphamss1	= Ctspham.where(sanpham_id: sanpham.id, size_id: 1).last
		ctsanphams1 = Ctspham.find(ctsanphamss1.id)
		@bangiumsx = Banggium.where(ctspham_id: ctsanphams1.id).last
		@bangiums = Banggium.find(@bangiumsx.id)
		render json: sanpham
	  end

	end
end

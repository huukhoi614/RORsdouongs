module Api::V1
  class SanphamsController < ActionController::API
  
	  def index
	  	@sanphams =  Sanpham.select(:loaisp_id, :id, :tensanpham, :anh, :mota)
	  	render json:  @sanphams, include: [:loaisp], methods: [:filtered_ctspham]
	  end

	  def show
		@sanpham = Sanpham.select(:loaisp_id, :id, :tensanpham, :anh, :mota).find(params[:id])
		render json: @sanpham
	  end

	end
end
	
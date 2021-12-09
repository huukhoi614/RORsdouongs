module Api::V1
  class SanphamsController < ActionController::API
  
	  def index
	  	@sanphams =  Sanpham.select(:loaisp_id, :id, :tensanpham, :anh)
	  	render json:  @sanphams, methods: [:ctspham_first]
	  end

	  def show
		@sanpham = Sanpham.select(:loaisp_id, :id, :tensanpham, :anh).find(params[:id])
		render json: @sanpham, methods: [:ctspham_all]
	  end

	end
end
	
module Api::V1
  class SanphamsController < ActionController::API
  
	  def index
		  @records = Sanpham
			.joins("
					join ctsphams ON ctsphams.sanpham_id = sanphams.id 
					join banggia on banggia.ctspham_id = ctsphams.id
					join ctkhuyenmais on ctkhuyenmais.sanpham_id = sanphams.id
					where ctsphams.size_id = 1
				")
			.select("sanphams.id,sanphams.tensanpham,sanphams.anh,banggia.gia,ctkhuyenmais.tylegiam")
		render json: @records 
	  end

	  def show
		@sanpham = Sanpham.select(:id, :tensanpham, :anh).find(params[:id])
		render json: @sanpham, include:  [:ctsphams]
	  end

	end
end
	
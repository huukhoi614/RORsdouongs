module Api::V1
  class SanphamsController < ActionController::API
  
	  def index
		  @records = Sanpham
			.joins("
				INNER JOIN ctsphams ON ctsphams.sanpham_id = sanphams.id AND ctsphams.size_id = 1
				LEFT JOIN banggia ON banggia.ctspham_id = ctsphams.id
				LEFT JOIN ctkhuyenmais ON ctkhuyenmais.sanpham_id = sanphams.id AND ctkhuyenmais.khuyenmai_id IN (
				SELECT id FROM khuyenmais  WHERE khuyenmais.ngayBD <= NOW() AND khuyenmais.ngayKT >= NOW()
				)
			")
			.select("sanphams.id,sanphams.tensanpham,sanphams.anh,banggia.gia,COALESCE(ctkhuyenmais.tylegiam,0) as discount")
		render json: @records
	  end

	  def show
		@sanpham = Sanpham
			.joins("
				left join ctkhuyenmais on ctkhuyenmais.sanpham_id = sanphams.id AND ctkhuyenmais.khuyenmai_id IN (
					SELECT id FROM khuyenmais  WHERE NOW() BETWEEN khuyenmais.ngayBD AND khuyenmais.ngayKT
				)"
			)
			.select("sanphams.id,sanphams.tensanpham,sanphams.anh,COALESCE(ctkhuyenmais.tylegiam,0) as discount")
			.find(params[:id])
			render json: @sanpham
	  end

	end
end
	
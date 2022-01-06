module Api::V1
  class SanphamsController < ActionController::API
  
	  def index
		  @records = Sanpham
			.joins("
				left join ctsphams ON ctsphams.sanpham_id = sanphams.id and ctsphams.size_id = 1
				left join banggia on banggia.ctspham_id = ctsphams.id
				left join ctkhuyenmais on ctkhuyenmais.sanpham_id = sanphams.id
				left join khuyenmais on khuyenmais.id = ctkhuyenmais.khuyenmai_id and #{DateTime.current.to_date} BETWEEN khuyenmais.ngayBD and khuyenmais.ngayKT")
			.select("sanphams.id,sanphams.tensanpham,sanphams.anh,banggia.gia,COALESCE(ctkhuyenmais.tylegiam,0) as discount")
		render json: @records
	  end

	  def show
		@sanpham = Sanpham
			.joins("
				left join ctkhuyenmais on ctkhuyenmais.sanpham_id = sanphams.id
				left join khuyenmais on khuyenmais.id = ctkhuyenmais.khuyenmai_id and #{DateTime.current.to_date} BETWEEN khuyenmais.ngayBD and khuyenmais.ngayKT")
			.select("sanphams.id,sanphams.tensanpham,sanphams.anh,COALESCE(ctkhuyenmais.tylegiam,0) as discount")
			.find(params[:id])
			render json: @sanpham
	  end

	end
end
	
module Api::V1
  class SanphamsController < ActionController::API
  

	  def index
	  	@sanphams =  Sanpham.select(:loaisp_id, :id, :tensanpham, :anh, :mota)
	  	render json:  @sanphams, include: [:loaisp]
	  end


	end
end

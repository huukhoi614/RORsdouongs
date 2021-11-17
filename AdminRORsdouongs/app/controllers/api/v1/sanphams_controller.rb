module Api::V1
  class SanphamsController < ActionController::API
  
	  def show
	  end

	  def index
	  	@sanphams =  Sanpham.all.sort_by(&:loaisp_id)
	  

	  	render json:  JSON.pretty_generate({ sanphams: @sanphams.as_json(only: [:id, :tensanpham, :loaisp_id, :mota, :anh, :loaisp_id]) })
	  end

	  def edit
	  end
	  
	  def new
	  end
	end
end

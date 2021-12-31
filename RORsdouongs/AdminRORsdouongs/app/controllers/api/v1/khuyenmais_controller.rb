module Api::V1
  class KhuyenmaisController < ActionController::API
  
	  def index
	  	@khuyenmais = Khuyenmai.select(:id,:tendot,:ngayBD,:ngayKT)
        render json: @khuyenmais
	  end
      
      def show
        @khuyenmai = Khuyenmai.select(:id,:tendot,:ngayBD,:ngayKT).find(params[:id])
        render json: @khuyenmai
      end

	end
end

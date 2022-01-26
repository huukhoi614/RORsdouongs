module Api::V1
  class KhuyenmaisController < ActionController::API
  
	  def index
	  	@khuyenmais = Khuyenmai.select(:id,:tendot,:ngayBD,:ngayKT)
      .where('now() BETWEEN khuyenmais.ngayBD AND khuyenmais.ngayKT')
        render json: @khuyenmais
	  end
      
    def show
      @khuyenmai = Khuyenmai.select(:id,:tendot,:ngayBD,:ngayKT).find(params[:id])
      render json: @khuyenmai
    end

    def create
      khuyenmai = Khuyenmai.new(khuyenmai_params)
      if khuyenmai.save
        render json: "Success"
      else
        render json: "Error"
      end
    end



    private
    def khuyenmai_params
      params.require(:khuyenmai).permit(:tendot,:ngayBD,:ngayKT)
    end



	end
end

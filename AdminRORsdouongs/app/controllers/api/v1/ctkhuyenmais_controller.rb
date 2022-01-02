module Api::V1
  class CtkhuyenmaisController < ActionController::API
  
	def index
	  	@khuyenmais = Ctkhuyenmai.select(:id,:sanpham_id,:khuyenmai_id)
        render json: @khuyenmais
	end
      

    def create
      khuyenmai = Ctkhuyenmai.new(ctkhuyenmai_params)
      if khuyenmai.save
        render json: "Success"
      else
        render json: "Error"
      end
    end



    private
    def ctkhuyenmai_params
      params.require(:ctkhuyenmai).permit(:tylegiam,:khuyenmai_id,:sanpham_id)
    end



	end
end

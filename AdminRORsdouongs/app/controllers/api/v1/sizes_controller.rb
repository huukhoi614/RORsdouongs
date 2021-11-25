module Api::V1
  class SizesController < ActionController::API
  
	  def index
	  	@sizes = Size.select(:id, :tensize)
        render json: @sizes
	  end
      
      def show
        @size = Size.select(:id, :tensize).find(params[:id])
        render json: @size
      end

	end
end

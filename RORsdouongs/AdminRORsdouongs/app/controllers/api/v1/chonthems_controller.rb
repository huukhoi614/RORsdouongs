module Api::V1
  class ChonthemsController < ActionController::API
  
	  def index
	  	@chonthems = Chonthem.select(:id, :tenthanhphan, :gia)
        render json: @chonthems
	  end
      
      def show
        @chonthem = Chonthem.select(:id, :tenthanhphan, :gia).find(params[:id])
        render json: @chonthem
      end

	end
end

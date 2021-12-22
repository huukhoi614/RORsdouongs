module Api::V1
  class CtchonthemsController < ActionController::API

	  def index
        @ctchonthems = Ctchonthem.all
        render json: @ctchonthems
      end

      def show
        @ctchonthem = Ctchonthem.find(params[:id])
        render json: @ctchonthem
      end
      
      def new
        @ctchonthem = Ctchonthem.new
      end
      
      def create
      end

	end
end

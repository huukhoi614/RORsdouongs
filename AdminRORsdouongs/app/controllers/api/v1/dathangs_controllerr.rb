module Api::V1
  class DathangsController < ActionController::API
  
	  def index
        @dathangs = Dathang.all
        render json: @dathangs
	  end

	  def show
        @dathang = Dathang.find(params[:id])
        render json: @dathang
	  end

      def new
        @dathang = Dathang.new
      end

      def create
      end

	end
end
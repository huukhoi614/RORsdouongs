module Api::V1
  class CtSpChesController < ActionController::API

	  def index
        @ctdathangs = CtSpCh.all
        render json: @ctdathangs
      end

      def show
        @ctdathang = CtSpCh.find(params[:id])
        render json: @ctdathang
      end

      def new
        @ctdathang = CtSpCh.new
      end

      def create
        ctdathang = CtSpCh.create(
          {
            dathang_id: params[:dathang_id],
            ctspham_id: params[:ctspham_id],
            soluong: params[:soluong],
            giact: params[:giact]
          }
        )
        if ctchonthem.save
          render json: "Add detail topping Success"
        else
          render json: "Add detail topping Error"
        end 
      end
	end
end

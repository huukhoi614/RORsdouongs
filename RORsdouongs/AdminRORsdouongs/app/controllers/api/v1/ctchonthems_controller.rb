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
        ctchonthem = Ctchonthem.create(
          {
            chonthem_id: params[:chonthem_id],
            ct_sp_ch_id: params[:ct_sp_ch_id],
            gia: params[:gia]
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

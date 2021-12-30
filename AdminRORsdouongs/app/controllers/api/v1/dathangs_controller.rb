module Api::V1
  class DathangsController < ActionController::API
  
	  def index
        @dathangs = Dathang.select(:id,:nguoinhan,:diachinhan,:ngaydat,:ngayduyet,:ngaygiao,:ngaynhan,:tonggia,:hinhthucmua,:cuahang_id,:vanchuyen_id,:order_status_id,:khachhang_id,:phiship)
        render json: @dathangs
	  end

	  def show
        @dathang = Dathang.select(:id,:nguoinhan,:diachinhan,:ngaydat,:ngayduyet,:ngaygiao,:ngaynhan,:tonggia,:hinhthucmua,:cuahang_id,:vanchuyen_id,:order_status_id,:khachhang_id,:phiship).find(params[:id])
        render json: @dathang
	  end

    def new
      @dathang = Dathang.new
    end

    def create
      dathang = Dathang.new(dathang_params)
      if dathang.save
        render json: "Order Success"
      else
        render json: "Order Errror"
      end
    end
    
    private
    def dathang_params
      params.require(:dathang).permit(
        :ngaydat,:ngayduyet,
        :ngaygiao,:ngaynhan,
        :hinhthucmua,:phiship,
        :tonggia,:order_status_id,
        :vanchuyen_id,
        :khachhang_id,:cuahang_id,
        :nguoinhan,:diachinhan,
        ct_sp_ches_attributes: [
          :ctspham_id,
          :soluong,
          :giact,
          ctchonthems_attributes: [
            :chonthem_id
          ]
        ]
      )
    end


	end
end
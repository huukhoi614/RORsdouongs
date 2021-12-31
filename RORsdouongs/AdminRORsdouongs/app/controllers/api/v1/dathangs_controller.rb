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
      dathang = Dathang.create(
        {
          ngaydat: params[:ngaydat],
          ngayduyet: params[:ngayduyet],
          ngaygiao: params[:ngaygiao],
          ngaynhan: params[:ngaynhan],
          hinhthucmua: params[:hinhthucmua],
          phiship: params[:phiship],
          tonggia: params[:tonggia],
          order_status_id: params[:order_status_id],
          vanchuyen_id: params[:vanchuyen_id],
          khachhang_id: params[:khachhang_id],
          cuahang_id: params[:cuahang_id],
          diachinhan: params[:diachinhan],
          nguoinhan: params[:nguoinhan]
        }
      )
      if dathang.save
        render json: "Order Success"
      else
        render json: "Order Errror"
      end
    end

	end
end
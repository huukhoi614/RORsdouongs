class DathangsController < ApplicationController
  before_action :set_dathang, only: %i[ show edit update destroy ]

  # GET /dathangs or /dathangs.json
  def index
    @dathangs = Dathang.all
  end

  # GET /dathangs/1 or /dathangs/1.json
  def show
    @cuahang = Cuahang.all
  end

  # GET /dathangs/new
  def new
    @dathang = Dathang.new
  end

  # GET /dathangs/1/edit
  def edit
  end

  # POST /dathangs or /dathangs.json
  def create
    @dathang = Dathang.new(dathang_params)

    respond_to do |format|
      if @dathang.save
        format.html { redirect_to @dathang, notice: "Dathang was successfully created." }
        format.json { render :show, status: :created, location: @dathang }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dathang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dathangs/1 or /dathangs/1.json
  def update
    khachhang = Khachhang.checkphone(session[:phone_user]) 
    cuhang = params[:cuahang_id]
    diachinhan = params[:diachinhan]
    order_status_id = params[:order_status_id]
    if diachinhan == nil
      diachinhan = khachhang.diachi
    end
    ctspch = params[:ct_sp_ch]
    soluong = params[:soluong]

    
    respond_to do |format|
      if order_status_id == nil
         if ctspch != nil
          ct_sp_ch = CtSpCh.find(ctspch)
          ct_sp_ch.update(soluong: soluong)
        end
        if @dathang.update(cuahang_id: cuhang, diachinhan: diachinhan)
          format.html { redirect_to @dathang, notice: "Dathang was successfully updated." }
          format.json { render :show, status: :ok, location: @dathang }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @dathang.errors, status: :unprocessable_entity }
        end
      else
        if @dathang.update(order_status_id: order_status_id, ngaydat: Time.now)
          session[:dathang_id] = nil
          format.html { redirect_to sanphams_url, notice: "Dathang was successfully updated." }
          format.json { render :show, status: :ok, location: @dathang }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @dathang.errors, status: :unprocessable_entity }
        end
      end
    
    end
  end

  # DELETE /dathangs/1 or /dathangs/1.json
  def destroy
    @ctspch = CtSpCh.where(dathang: @dathang.id)
    if(@ctspch != nil)
       destroy_ctspch(@dathang.id)
    end
    @dathang.destroy
    session[:dathang_id] = nil
    respond_to do |format|
      format.html { redirect_to dathangs_url, notice: "Dathang was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dathang
      @dathang = Dathang.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dathang_params
      params.require(:dathang).permit(:ngaydat, :ngayduyet, :ngaygiao, :ngaynhan, :hinhthucmua, :phiship, :tonggia, :order_status_id, :vanchuyen_id, :khachhang_id, :cuahang_id, :diachinhan)
    end
end

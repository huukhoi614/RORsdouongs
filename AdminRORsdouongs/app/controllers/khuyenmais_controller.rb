class KhuyenmaisController < ApplicationController
  def show
  end

  def new
    
    @khuyenmai = Khuyenmai.new()
  end

  def index
    @khuyenmais= Khuyenmai.all()

  end

  def edit
  end
  
  def create
    sem = params[:subchecked]
    start = params[:start_date]
    end_date = params[:end_date]
    @khuyenmai = Khuyenmai.new(khuyenmai_params)
    giamgiapt = params[:tylegiam]
    soluongmua = params[:soluongmua]
    soluongtang = params[:soluongtang]
    respond_to do |format|
      if @khuyenmai.save()
        @khuyenmai.update(ngayBD: start, ngayKT: end_date)
        if(sem != nil)
          sem.each do |sem|
            counter = 1
             while sem[counter] != nil
              @khuyenmaixx = create_ctkhuyenmai(@khuyenmai.id, sem[counter], giamgiapt)  
              counter = counter + 1
             end
          end
        end
        if(soluongmua != 0)
          if(sem != nil)
            @ctkhuyenmais = Ctkhuyenmai.where(:khuyenmai_id => @khuyenmai.id)
            @ctkhuyenmais.each do |ctkm|
              @quatang = create_quatang(ctkm.id, soluongmua, soluongtang)
            end
          end
        end
        format.html { redirect_to khuyenmais_url, notice: "Khuyenmai was successfully created." }
        format.json { render :show, status: :created, location: khuyenmai_url }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @khuyenmai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dathangs/1 or /dathangs/1.json
  def update
    respond_to do |format|
          if @khuyenmai.update()
            session[:dathang_id] = nil
            format.html { redirect_to khuyenmais_url, notice: "Dathang was successfully updated." }
            format.json { render :show, status: :ok, location: @khuyenmai }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @khuyenmai.errors, status: :unprocessable_entity }
          end
       
    
    end
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_khuyenmai
      @khuyenmai = Khuyenmai.find(params[:id])
  end


  # Only allow a list of trusted parameters through.
  def khuyenmai_params
    params.require(:khuyenmai).permit(:id,:tendot, :ngayBD, :ngayKT)
  end
end

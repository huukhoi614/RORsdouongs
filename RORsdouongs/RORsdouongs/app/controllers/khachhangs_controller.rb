class KhachhangsController < ApplicationController
	before_action :set_khachhang, only: %i[ show edit update destroy ]

  # GET /khachhangs or /khachhangs.json
  def index
 
  end
  def show
    
  end
  def new
    @khachhang = Khachhang.new

  end
  

  # GET /khachhangs/1/edit
  def edit
  end

  # POST /khachhangs or /khachhangs.json
  def create
    @khachhang = Khachhang.new(khachhang_params)

    respond_to do |format|
      if @khachhang.save
        format.html { redirect_to @khachhang, notice: "Khachhang was successfully created." }
        format.json { render :show, status: :created, location: @khachhang }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @khachhang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /khachhangs/1 or /khachhangs/1.json
  def update
    respond_to do |format|
      if @khachhang.update(khachhang_params)
        format.html { redirect_to @khachhang, notice: "Khachhang was successfully updated." }
        format.json { render :show, status: :ok, location: @khachhang }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @khachhang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /khachhangs/1 or /khachhangs/1.json
  def destroy
    @khachhang.destroy
    respond_to do |format|
      format.html { redirect_to khachhangs_url, notice: "Khachhang was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_khachhang
      @khachhang = Khachhang.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def khachhang_params
      params.require(:khachhang).permit(:tenKH, :sodienthoai, :diachi, :hashed_password, :salt, :password, :password_confirmation, :point)
    end
 
end

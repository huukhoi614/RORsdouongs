class CtchonthemsController < ApplicationController
  def index
  end

  def edit
  end

  def show
  end

  def new
  end
  def create
    @ctchonthem = Ctchonthem.new(ctchonthem_params)

    respond_to do |format|
      if @ctchonthem.save
        format.html { redirect_to ctchonthem_url, notice: "ctchonthem was successfully created." }
        format.json { render :show, status: :created, location: @ctchonthem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ctchonthem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /khachhangs/1 or /khachhangs/1.json
  def update
    respond_to do |format|
      if @ctchonthem.update(ctchonthem_params)
        format.html { redirect_to @ctchonthem, notice: "ctchonthem was successfully updated." }
        format.json { render :show, status: :ok, location: @ctchonthem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ctchonthem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /khachhangs/1 or /khachhangs/1.json
  def destroy
    @ctchonthem.destroy
    respond_to do |format|
      format.html { redirect_to ctchonthem_url, notice: "ctchonthem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_khachhang
      @ctchonthem = Ctchonthem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def khachhang_params
      params.require(:ctchonthem).permit(:chonthem_id, :ctspham_id)
    end
end

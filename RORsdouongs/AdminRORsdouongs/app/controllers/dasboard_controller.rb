class DasboardController < ApplicationController
  def index
   @ctspches = CtSpCh.all()
   @sanphams= Sanpham.all()
  @cuahangs = Cuahang.all()
  end
end

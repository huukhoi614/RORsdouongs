class ThongkeController < ApplicationController
  def index
  	@dathangs = Dathang.where(order_status_id: 5)
  end
  def theongay
  	day = DateTime.now
  	@dathanghts = Dathang.where(order_status_id: 5 )
  	@dathangs = @dathanghts.where(ngaynhan: day)
  end
  def theothang
  	
  end
end

class Ctspham < ApplicationRecord
  belongs_to :sanpham
  belongs_to :size
  has_many :ctchonthems
  has_many :banggia
   def soluong
  	tong = CtSpCh.where(ctspham_id: self.id).sum { |item| item.soluong}
  	tong
  end
end

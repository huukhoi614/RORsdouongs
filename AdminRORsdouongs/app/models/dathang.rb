class Dathang < ApplicationRecord
  belongs_to :order_status
  belongs_to :vanchuyen
  belongs_to :khachhang
  belongs_to :cuahang
  has_many :ct_sp_ches, :dependent => :destroy
  accepts_nested_attributes_for :ct_sp_ches


  
  def tonggiat
  	ct_sp_ches.to_a.sum { |item| item.giact}
  end
  

end

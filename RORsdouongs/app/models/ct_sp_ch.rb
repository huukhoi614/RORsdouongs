class CtSpCh < ApplicationRecord
  belongs_to :ctspham
  belongs_to :dathang
  has_many :ctchonthems
end

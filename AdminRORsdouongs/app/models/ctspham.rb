class Ctspham < ApplicationRecord
  belongs_to :sanpham
  belongs_to :size
  has_many :ctchonthems
  has_many :banggia

end

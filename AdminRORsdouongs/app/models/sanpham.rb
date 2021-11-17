class Sanpham < ApplicationRecord
  belongs_to :loaisp
  has_many :ctsphams
end

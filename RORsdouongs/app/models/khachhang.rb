class Khachhang < ApplicationRecord
	validates :sodienthoai, :presence => true, :uniqueness => true
	def Khachhang.checkphone(sodienthoai) 
        if khachhang = find_by_name(sodienthoai)
          khachhang
        end
    end
 
end

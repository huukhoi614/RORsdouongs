class Sanpham < ApplicationRecord
  belongs_to :loaisp
  has_many :ctsphams
  	def self.search(term, termloai)
	  	if term
			 where('tensanpham LIKE ?', "%#{term}%")
		else
		    all
		end
	end
	

end

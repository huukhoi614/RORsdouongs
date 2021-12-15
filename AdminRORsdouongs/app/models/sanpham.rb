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

	def id_ctspham
		ctsphams.select(:id).first
	end

	def ctspham_all
		ctsphams.select(:id, :size_id)
	end
	
	def soluongban
  		ctsphams.to_a.sum { |item| item.soluong}
  	end

end

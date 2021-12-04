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
	
	def filtered_ctspham
		self.ctsphams.map {|ctspham| {id: ctspham.id, sanpham_id: ctspham.sanpham_id, size_id: ctspham.size_id}}
	end
	def soluongban
  		ctsphams.to_a.sum { |item| item.soluong}
  	
  	end

end

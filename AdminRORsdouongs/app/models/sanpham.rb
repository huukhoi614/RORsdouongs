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
  	def checkquatang
       @ctkhuyenmais = Ctkhuyenmai.where(sanpham_id: self.id)
        datet = DateTime.now.year.to_s+"-"+DateTime.now.month.to_s+"-"+DateTime.now.day.to_s

        @ctkhuyenmais.each do |ctkhuyenmai|
            khuyenmai = Khuyenmai.find(ctkhuyenmai.khuyenmai_id)
            daybd = khuyenmai.ngayBD.year.to_s+"-"+khuyenmai.ngayBD.month.to_s+"-"+khuyenmai.ngayBD.day.to_s
            daykt = khuyenmai.ngayKT.year.to_s+"-"+khuyenmai.ngayKT.month.to_s+"-"+khuyenmai.ngayKT.day.to_s
            if daybd <= datet
                if daykt >= datet
                   @quatang = Quatang.where(ctkhuyenmai_id: ctkhuyenmai.id).last
                end
            end
           
        end
        @quatang

    end
end

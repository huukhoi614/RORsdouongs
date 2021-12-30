class CtSpCh < ApplicationRecord
  belongs_to :ctspham
  belongs_to :dathang
  has_many :ctchonthems
  accepts_nested_attributes_for :ctchonthems
  def giact
  	tong = 0
  	if(ctspham.present?)	
	  	banggium = Banggium.where(ctspham_id: ctspham.id).last
	  	banggium2 =Banggium.find(banggium.id)
	  	if ctchonthems.present?
		  	ctchonthems.each do |ctchonthem|
		  		chonthem = Chonthem.find(ctchonthem.chonthem_id)
		  		tong = tong + chonthem.gia.to_i
		  	end
		  end
		giamgia = banggium2.gia.to_i*checksukien(ctspham.sanpham.id)*self.soluong
	  tong = tong + (banggium2.gia.to_i)
	 end
	if(self.soluong.present?)
	  tong = tong * self.soluong-giamgia
	end
	tong.to_i
  end
private
	def checksukien(loaisp_id)
        @ctkhuyenmais = Ctkhuyenmai.where(sanpham_id: loaisp_id)
        giamgia = 0.0
        datet = dathang.ngaydat.year.to_s+"-"+dathang.ngaydat.month.to_s+"-"+dathang.ngaydat.day.to_s

        @ctkhuyenmais.each do |ctkhuyenmai|
            khuyenmai = Khuyenmai.find(ctkhuyenmai.khuyenmai_id)
            daybd = khuyenmai.ngayBD.year.to_s+"-"+khuyenmai.ngayBD.month.to_s+"-"+khuyenmai.ngayBD.day.to_s
            daykt = khuyenmai.ngayKT.year.to_s+"-"+khuyenmai.ngayKT.month.to_s+"-"+khuyenmai.ngayKT.day.to_s
            if daybd <= datet
                if daykt >= datet
                    giamgia = (giamgia.to_f + ctkhuyenmai.tylegiam.to_f)/100
                end
            end
        end
        giamgia.to_f
    end
end

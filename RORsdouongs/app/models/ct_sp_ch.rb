class CtSpCh < ApplicationRecord
  belongs_to :ctspham
  belongs_to :dathang
  has_many :ctchonthems
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
		giamgia = checksukien(ctspham.sanpham.loaisp_id)
	  	tong = tong + (banggium2.gia.to_i - banggium2.gia*(giamgia/100))
	 end
	if(self.soluong.present?)
	  tong = tong * self.soluong
	end
	tong.to_i
  end
  def checksukien(loaisp_id)
      @ctkhuyenmais = Ctkhuyenmai.where(sanpham_id: loaisp_id)
      giamgia = 0.0
      datet = DateTime.now.year.to_s+"-"+DateTime.now.month.to_s+"-"+(DateTime.now.day+1).to_s

      @ctkhuyenmais.each do |ctkhuyenmai|
          khuyenmai = Khuyenmai.find(ctkhuyenmai.khuyenmai_id)
          daybd = khuyenmai.ngayBD.year.to_s+"-"+khuyenmai.ngayBD.month.to_s+"-"+khuyenmai.ngayBD.day.to_s
          daykt = khuyenmai.ngayKT.year.to_s+"-"+khuyenmai.ngayKT.month.to_s+"-"+khuyenmai.ngayKT.day.to_s
          if daybd <= datet
              if daykt >= datet
                  giamgia = giamgia.to_f + ctkhuyenmai.tylegiam.to_f
              end
          end
      end
      giamgia.to_f
    end
private
	
end

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
	  	tong = tong + (banggium2.gia.to_i - banggium2.gia*giamgia)
	 end
	if(self.soluong.present?)
	  tong = tong * self.soluong
	end
	tong.to_i
  end
private
	def checksukien(loaisp_id)
        @ctkhuyenmais = Ctkhuyenmai.where(loaisp_id: loaisp_id)
        giamgia = 0.0
        @ctkhuyenmais.each do |ctkhuyenmai|
            khuyenmai = Khuyenmai.find(ctkhuyenmai.khuyenmai_id)
            if khuyenmai.ngayBD <= dathang.ngaydat
                if khuyenmai.ngayKT >= dathang.ngaydat
                    giamgia = giamgia.to_f + ctkhuyenmai.tylegiam.to_f
                end
            end
        end
        giamgia.to_f
    end
end

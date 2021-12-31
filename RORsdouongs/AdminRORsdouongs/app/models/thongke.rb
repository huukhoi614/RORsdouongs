class Thongke < ApplicationRecord
	def tongcong(ngay)
		@dathangs = Dathang.where(ngaynhan: ngay)
		tong = 0
		@dathangs.each do |dathang|
			tong= tong + dathang.tonggiat
		end
		tong
	end
	def tongdongia(ngay)
		@dathangs = Dathang.where(ngaynhan: ngay)
		tong = 0
		@dathangs.each do |dathang|

			dathang.ct_sp_ches.each do |ct_sp_ch|

				banggium= Banggium.where(ctspham_id: ct_sp_ch.ctspham_id).last
				banggiumh = Banggium.find(banggium.id)
				tong = tong + banggiumh.gia*ct_sp_ch.soluong
			end
		end
		tong
	end
	def tongtopping(ngay)
		@dathangs = Dathang.where(ngaynhan: ngay)
		tong = 0
		@dathangs.each do |dathang|
			dathang.ct_sp_ches.each do |ct_sp_ch|
				
			  	ct_sp_ch.ctchonthems.each do |ctchonthem|
			  		chonthem = Chonthem.find(ctchonthem.chonthem_id)
			  		tong = tong + chonthem.gia.to_i*ct_sp_ch.soluong
			  	end
				
			end
		end
		tong
	end
	
	def giamgia(ngay)
		@dathangs = Dathang.where(ngaynhan: ngay)
		tong = 0
		@dathangs.each do |dathang|

			dathang.ct_sp_ches.each do |ct_sp_ch|

				banggium= Banggium.where(ctspham_id: ct_sp_ch.ctspham_id).last
				banggiumh = Banggium.find(banggium.id)
				tong = tong + (banggiumh.gia*checksukien(ct_sp_ch.ctspham.sanpham_id,dathang.ngaydat))*ct_sp_ch.soluong
			end
		end
		tong.to_i
	end
	def checksukien(loaisp_id,ngay)
        @ctkhuyenmais = Ctkhuyenmai.where(sanpham_id: loaisp_id)
        giamgia = 0.0
        datet = ngay.year.to_s+"-"+ngay.month.to_s+"-"+ngay.day.to_s

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

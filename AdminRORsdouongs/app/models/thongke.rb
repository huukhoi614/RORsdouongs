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
			dathang.ct_sp_ches do |ct_sp_ch|
				banggium= Banggium.where(ctspham_id: ct_sp_ch.ctspham.id)
				banggiumh = Banggium.find(banggium.id)
				tong = tong + banggium.gia
			end
		end
		tong
	end
	def tongtopping(ngay)
		@dathangs = Dathang.where(ngaynhan: ngay)
		tong = 0
		@dathangs.each do |dathang|
			dathang.ct_sp_ches do |ct_sp_ch|
				
			  	ct_sp_ch.ctchonthems.each do |ctchonthem|
			  		chonthem = Chonthem.find(ctchonthem.chonthem_id)
			  		tong = tong + chonthem.gia.to_i
			  	end
				
			end
		end
		tong
	end
end

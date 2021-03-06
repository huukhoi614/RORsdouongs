class ApplicationController < ActionController::Base
private 
    def current_dathang(khachhang_id)
        Dathang.find(session[:dathang_id])
    rescue ActiveRecord::RecordNotFound

        dathang = Dathang.create! order_status_id: 1,khachhang_id: khachhang_id, vanchuyen_id: 1, cuahang_id: 1, ngaydat: Time.now
        session[:dathang_id] = dathang.id
        dathang
    end
    def create_ctchonmua(chonmuaid, ctspchid)
        Ctchonthem.find(session[:khong])
    rescue ActiveRecord::RecordNotFound
        ctchonthem =Ctchonthem.create! chonthem_id: chonmuaid, ct_sp_ch_id: ctspchid
        ctchonthem
    end
    def destroy_ctchonthem(ctspchid)
    	Ctchonthem.where(ct_sp_ch_id: ctspchid).delete_all
    end
    def destroy_ctspch(dathangid)
        @ctspches = CtSpCh.where(dathang_id: dathangid)
        @ctspches.each do |ct_sp_ch|
            destroy_ctchonthem(ct_sp_ch.id)
            ct_sp_ch.destroy
        end
    end
    def checksukien(loaisp_id)
        @ctkhuyenmais = Ctkhuyenmai.where(sanpham_id: loaisp_id)
        giamgia = 0.0
        datet = DateTime.now.year.to_s+"-"+DateTime.now.month.to_s+"-"+DateTime.now.day.to_s

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

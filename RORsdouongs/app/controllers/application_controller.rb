class ApplicationController < ActionController::Base
private 
    def current_dathang(khachhang_id)
        Dathang.find(session[:dathang_id])
    rescue ActiveRecord::RecordNotFound
        dathang = Dathang.create! order_status_id: 1,khachhang_id: khachhang_id, vanchuyen_id: 1, cuahang_id: 1
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
end

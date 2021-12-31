module Api::V1
  class AuthsController < ActionController::API

	def create 
	    if khachhang = Khachhang.authenticate(params[:sodienthoai], params[:password])
            @khachhang = Khachhang.select(:id,:tenKH,:sodienthoai,:point).find(khachhang.id)
            render json: @khachhang
	    else
	        render json: "Thông tin tài khoản mật khẩu không chính xác"
	    end
	end
	
	end
end

class SessionsController < ApplicationController
   	def new
	end

	def create 
	    if user = Khachhang.authenticate(params[:sodienthoai], params[:password])
	        session[:user_id] = user.id

	        session[:phone_user] = user.sodienthoai

	        session[:point_user] = user.point
	        
	        redirect_to home_url
	    else
	        redirect_to login_url, :alert => "Thông tin tài khoản mật khẩu không chính xác"
	    end
	end

	def destroy
	    session[:user_id] = nil
	    session[:phone_user] = nil
	    session[:point_user] = nil
	    redirect_to '/', :notice => "Logged out"
	end
end

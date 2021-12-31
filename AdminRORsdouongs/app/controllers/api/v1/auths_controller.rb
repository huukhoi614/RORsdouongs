module Api::V1
  class AuthsController < ActionController::API
	
	def new
	end

	def show
		@user = User.select(:id,:name,:phone,:point).find(params[:id])
        render json: @user
	end

	def create 
	    if user = User.authenticate2(params[:phone], params[:password])
            @user = User.select(:id,:name,:phone,:point).find(user.id)
            render json: @user
	    else
	        render json: "Thông tin tài khoản mật khẩu không chính xác"
	    end
	end
	
	end
end

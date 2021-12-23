module Api::V1
  class UsersController < ActionController::API

    def index
      @users = User.select(:id,:name,:phone,:hashed_password,:salt,:point)
      render json: @users
    end

    def new
      @user = User.new
    end

    def create
      user = User.create(
        {
          name: params[:name],
          phone: params[:phone],
          hashed_password: params[:hashed_password],
          password_confirmation: params[:password_confirmation],
          point: params[:point],
          salt: params[:salt],
          password: params[:password],
        }
      )
      if user.save
        render json: "Created user success"
      else
        render json: "Cretate user failed"
      end
    end
	
	end
end

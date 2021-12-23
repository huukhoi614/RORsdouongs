module Api::V1
  class UsersController < ActionController::API

  def index
    @users = User.select(:id,:name,:phone,:hashed_password,:salt,:point)
    render json: @users
  end

  
	
	end
end

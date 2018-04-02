class Api::UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      render json: 'hi'
    end
  end

  private
  def user_params()
    params.require(:user).permit(:username, :password)
  end
end

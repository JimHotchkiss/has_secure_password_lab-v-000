class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to 'root_path'
    else
      redirect_to '/new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password_digest, :password_confirmation)
  end

end
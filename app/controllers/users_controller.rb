class UsersController < ApplicationController
  def show
    @user = User.getProfile(params[:username])
  end
end
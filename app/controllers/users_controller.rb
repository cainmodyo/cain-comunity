class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'Not authorized as no administrator.'
    @users = User.all
  end

  def show
    authorize! :index, @user, :message => 'Not authorized as no administrator.'
    @user = User.find(params[:id])
  end

end

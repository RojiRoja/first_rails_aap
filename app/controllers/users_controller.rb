class UsersController < ApplicationController
  before_action :find_user , only: [:show , :edit , :update , :destroy]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  def create
    @user = User.new(name: params[:user][:name],address: params[:user][:address])
    if @user.save
      redirect_to users_path
    else
      render "new"
    end
  end
  def show

  end
  def edit
    #@user = User.find(params[:id])
  end
  def update
     @user = User.find(params[:id])
    # if @user.update(name: params[:user][:name],address: params[:user][:address])
       if @user.update(user_params)
        redirect_to users_path
    else
      render 'edit'
  end
end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end
private
 def user_params
   params.require(:user).permit(:name, :address)
end
def find_user
    @user = User.find(params[:id])
end
end

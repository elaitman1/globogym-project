class UsersController < ApplicationController
  before_action :find_user, only: [:show, :destroy, :edit]
  skip_before_action :authorized, only: [:new, :create]

  def show

  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      login_user(@user) #same as above; delegated to ApplicationController
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def update
      @user = User.find_by(id: params[:id])
      if @user.update(user_params)
        redirect_to user_path(@user)
      else
        flash[:errors] = @user.errors.full_messages
        redirect_to user_path(@user)
      end
  end

  def new
    @user = User.new
  end

  def edit

  end

  def destroy
    @user.destroy
    redirect_to new_user_path
  end

  private

  def user_params
    params.require(:user).permit(:name,:username, :password, :weight, :mood)
  end

  def find_user
    @user = User.find_by(id: params[:id])
  end
end

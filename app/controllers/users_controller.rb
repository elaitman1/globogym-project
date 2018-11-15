class UsersController < ApplicationController
  before_action :find_user, only: [:show, :destroy, :edit]
  skip_before_action :authorized, only: [:new, :create]

  def index
    @users = User.all
  end

  def show

  end

  def create
    byebug
    @user = User.create(user_params)
    if @user.valid?
      @user.instantiate_badges
      flash[:notice] = "New user created successfully!"
      redirect_to user_path(@user)
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
    params.require(:user).permit(:name,:username, :password, :weight, :mood, :image)
  end

  def find_user
    @user = User.find_by(id: params[:id])
  end
end

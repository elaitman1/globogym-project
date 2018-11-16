class BadgesController < ApplicationController
  before_action :find_badge, only: [:show, :edit, :create, :destroy]

  def index
    @badges = Badge.all
    @user = User.find_by(id: session[:user_id])
  end

  def show
  end

  #USERS WILL NOT HAVE THE OPTION TO CREATE, UPDATE OR DELETE BADGES

  # def new
  #   @badge = Badge.new
  # end
  #
  # def create
  #   @badge = Badge.create(badge_params)
  #   redirect_to badge_path(@badge)
  # end
  #
  # def edit
  #   #code
  # end
  #
  # def update
  #   @badge.update(badge_params)
  #   redirect_to badge_path(@badge)
  # end
  #
  # def destroy
  #   @badge.destroy
  #   redirect_to badges_path
  # end

  private

  def find_badge
    @badge = Badge.find_by(id: params[:id])
  end

  def badge_params
    params.require(:badge).permit(:name, :description, :image)
  end

end

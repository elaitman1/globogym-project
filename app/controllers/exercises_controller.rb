class ExercisesController < ApplicationController

  before_action :find_exercise, only: [:show, :update, :edit, :destroy]

  def index
  @exercises  = Exercise.all
  end

  def show
  end

  def create
    @exercise = Exercise.create(exercise_params)
    if @exercise.valid?
      # redirect_to user_path(current_user) (once sessions are set up)
      redirect_to @exercise
    else
      flash[:error] = @exercise.errors.full_messages
      redirect_to new_exercise_path
    end
  end

  def update
      @exercise = exercise.find_by(id: params[:id])
      if @exercise.update(exercise_params)
        redirect_to exercise_path(@exercise)
      else
        flash[:errors] = @exercise.errors.full_messages
        redirect_to new_exercise_path
      end
  end

  def new
    @exercise = Exercise.new
  end

  def edit

  end

  def destroy
    @exercise.destroy
    redirect_to exercises_path
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name)
  end

  def find_exercise
    @exercise = Exercise.find_by(id: params[:id])
  end
end

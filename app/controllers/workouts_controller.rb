class WorkoutsController < ApplicationController
  before_action :find_workout, only: [:show]

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def create
    @workout = Workout.create(workout_params)
    redirect_to workouts_path
  end

  private

  def workout_params
    params.require(:workout).permit(:date, :workout, :length, :mood, :comment)
  end


end

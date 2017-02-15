class WorkoutsController < ApplicationController
  before_action :find_workout, only: [:show, :edit]
  

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
    @workout = Workout.new(workout_params)
    @workout.save
    redirect_to @workout
  end

  private

  def workout_params
    params.require(:workout).permit(:date, :workout, :length, :mood, :comment)
  end

  def find_workout
    @workout = Workout.find(params[:id])
  end

end

class MotivationsController < ApplicationController
  before_action :find_workout, only: [:index]
 
  def index
    @motivation = Motivation.order("RANDOM()").first
  end

  def new
    @motivation = Motivation.new
  end

  def create
    @motivation = Motivation.create(motivation_params)
    redirect_to motivations_path
  end

  def show
  end

  private

  def motivation_params
    params.require(:motivation).permit(:quote, :comment)
  end

  def find_motivation
    @motivation = Motivation.find(params[:id])
  end

end

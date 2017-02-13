class MotivationsController < ApplicationController
 
  def index
    @motivation = Motivation.order("RANDOM()").first
  end

  def new
    @motivation = Motivation.new
  end

  def create
    Motivation.create(motivation_params)
    redirect_to motivations_path
  end

  private

  def motivation_params
    params.require(:motivation).permit(:quote, :comment)
  end

end

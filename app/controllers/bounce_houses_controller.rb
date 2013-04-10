class BounceHousesController < ApplicationController
  def index
  end

  def new
    @bounce_house = BounceHouse.new
  end

  def create
    @bounce_house = BounceHouse.new(params[:project])

    if @bounce_house.save
      flash[:notice] = "Your new Bounce House has been created."
      redirect_to bounce_houses_path
    else
    end
  end
end

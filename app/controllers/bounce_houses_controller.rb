class BounceHousesController < ApplicationController
  def index
  end

  def new
    @bounce_house = BounceHouse.new
  end

  def create
  end
end

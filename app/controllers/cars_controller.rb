class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def create
    @car = Car.new(car_params)
  end

  def new
    @car = Car.new
  end

  def car_params
    params.require(:car).permit(:make, :model, :year, :price)
  end
  
end

class CarsController < ApplicationController
  before_action :find_car, only: [:update, :show, :destroy]

  def index
    if params[:address]
      @cars = Car.where(address: params[:address])
    else
      @cars = Car.all
    end
  end

  def show
    @user = User.find(@car.user_id)
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user

    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end

  end

  def new
    @car = Car.new
  end

  def update
    if @car.update(car_params)
      redirect_to car_path(@car)
    else
      render :edit
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_path
  end

  def find_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:make, :model, :year, :price, :photo)
  end

end

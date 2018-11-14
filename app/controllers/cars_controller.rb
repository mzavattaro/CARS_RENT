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
    if current_user.id == @car.user_id
      if @car.update(car_params)
        redirect_to car_path(@car)
      else
        render :edit
      end
    else
      flash[:notice] = "You are not allowed to update!!!"
      redirect_to car_path(@car)
    end
  end

  def destroy
    if current_user.id == @car.user_id
      @car.destroy
      redirect_to cars_path
    else
      flash[:notice] = "You are not allowed to delete!!!"
      redirect_to car_path(@car)
    end

  end

  def find_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:make, :model, :year, :price, :photo)
  end

end

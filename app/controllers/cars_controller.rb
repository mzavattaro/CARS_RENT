class CarsController < ApplicationController
  before_action :find_car, only: [:update, :show, :destroy, :edit]

  def index
    @cars = Car.where.not(latitude: nil, longitude: nil)
    # @cars_date = Car
    
    if params[:address].present? && params[:start_date].present? && params[:end_date].present?
      @cars = Car.search_by_address(params[:address]).where(start_date: Date.parse(params[:start_date])..Date.parse(params[:end_date]))
    elsif params[:address].present?
      @cars = Car.search_by_address(params[:address])
    else
      @cars = Car.all
    end

    @markers = @cars.map do |flat|
      {
        lng: flat.longitude,
        lat: flat.latitude
      }
    end
  end

  def edit
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
    params.require(:car).permit(:make, :model, :year, :price, :photo, :address, :start_date, :end_date)
  end

end

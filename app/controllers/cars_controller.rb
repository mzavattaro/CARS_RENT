class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  # def create
  # @car = Car.new(car_params)
  # @booking = Booking.find(params[:booking_id])
  # @car.booking = @booking
  # end

  # def show
  # # @car = Car.find
  # end
end

class BookingsController < ApplicationController
  
  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def create
    @car = Car.find(params[:id])
    if current_user.id == @car.id
      flash[:notice] = "You can not book your car!!"
      redirect_to cars_path
    else
      @booking = Booking.new
      @booking.user = current_user
      @booking.car_id = params[:id]
      @booking.save
    redirect_to mybookings_path
    end
    
  end

  def my_bookings
    @bookings = current_user.bookings
  end

  def rent_your_car
  end

  def destroy
    @booking = Booking.find(params[:booking_id])
    @booking.destroy
    redirect_to bookings_path
  end

end

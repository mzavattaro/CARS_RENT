class BookingsController < ApplicationController
  
  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.car_id = params[:id]

    @booking.save
    redirect_to mybookings_path
  end

  # def update
  #   if @booking.update()
  # end

  def my_booking
    @bookings = Booking.where(user_id: current_user.id)
  end

  def rent_your_car
    @cars = Car.where(user_id: current_user.id)
    @bookings = []
    @cars.each do |car|
      @bookings = Booking.find(car_id: car.id )
    end
  end

  def destroy
    @booking = Booking.find(params[:booking_id])
    @booking.destroy
    redirect_to bookings_path
  end

end

class BookingsController < ApplicationController
  def index
    if current_user.sitter == true
      @user = SitterProfile.where(user_id: current_user)
      @bookings = Booking.where(sitter_profile_id: @user)
    else
      @bookings = current_user.bookings
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @user = current_user
    @pet_sitter = SitterProfile.find(params[:sitter_profile_id])
    @booking = Booking.new
  end

  def create
    @user = current_user
    @pet_sitter = SitterProfile.find(params[:sitter_profile_id])
    @booking = Booking.new(booking_params)
    @booking.user_id = @user.id
    @booking.sitter_profile_id = @pet_sitter.id
    if @booking.save!
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = current_user
    @pet_sitter = SitterProfile.find(params[:sitter_profile_id])
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :owner_message, :user_id, :sitter_profile_id)
  end
end

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
    if current_user.sitter == true
      redirect_to bookings_path
    else
      @user = current_user
      @pet_sitter = SitterProfile.find(params[:sitter_profile_id])
      @booking = Booking.new
    end
  end

  def create
    if current_user.sitter == true
      redirect_to bookings_path
    else
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
  end

  def edit
    if current_user.sitter == true
      @pet_sitter = SitterProfile.where(user_id: current_user).first
      @booking = Booking.find(params[:id])
      @owner = User.find(@booking.user_id)
    else
      @pet_sitter = SitterProfile.find(params[:sitter_profile_id])
      @user = current_user
      @booking = Booking.find(params[:id])
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :owner_message, :sitter_message, :user_id, :sitter_profile_id, :confirmed)
  end
end

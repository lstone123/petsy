class SitterProfilesController < ApplicationController

  # before_action :set_sitter_profile, only: [:show, :edit, :update, :destroy]

  # def index
  #   @sitter_profiles = SitterProfile.all
  # end

  def index
    if params[:query].present?
      @sitter_profiles = SitterProfile.where(species_preference: params[:query])
      @markers = @sitter_profiles.geocoded.map do |sitter_profile|
        {
          lat: sitter_profile.latitude,
          lng: sitter_profile.longitude
        }
      end
    else
      @sitter_profiles = SitterProfile.all
      @markers = @sitter_profiles.geocoded.map do |sitter_profile|
        {
          lat: sitter_profile.latitude,
          lng: sitter_profile.longitude
        }
      end
    end
  end

  def show
    @sitter_profile = SitterProfile.find(params[:id])
  end

  def new
    @sitter_profile = SitterProfile.new
  end

  def create
    @sitter_profile = SitterProfile.new(sitter_profile_params)
    @sitter_profile.user_id = current_user.id
    if @sitter_profile.save!
      redirect_to sitter_profile_path(@sitter_profile)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @sitter_profile = SitterProfile.find(params[:id])
  end

  def update
    @sitter_profile = SitterProfile.find(params[:id])
    if @sitter_profile.update(sitter_profile_params)
      redirect_to sitter_profile_path(@sitter_profile)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @sitter_profile = SitterProfile.find(params[:id])
    @sitter_profile.destroy
    redirect_to sitter_profiles_path(@sitter_profile)
  end

  private

  def set_sitter_profile
    @sitter_profile = SitterProfile.find(params[:id])
  end

  def sitter_profile_params
    params.require(:sitter_profile).permit(:species_preference, :description, :address)
  end
end

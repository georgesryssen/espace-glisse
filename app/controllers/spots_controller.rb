class SpotsController < ApplicationController
  before_action :set_spot, only: %i[show edit update destroy]

  def index
    @spots = Spot.all
  end

  def show
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    if @spot.save
      redirect_to spot_path(@spot)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @spot.update(spot_params)
      redirect_to spot_path(@spot)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @school.delete

    redirect_to spots_path, status: :see_other
  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end

  def spot_params
    params.require(:spot).permit(:name, :level, :latitude, :longitude, :town, :address)
  end
end

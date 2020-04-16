class PlantsController < ApplicationController
  def new
    @garden = Garden.find(params[:garden_id])
    @plant  = Plant.new
  end

  def create
    @plant  = Plant.new(plant_params)
    @garden = Garden.find(params[:garden_id])
    @plant.garden = @garden
    if @plant.save
      redirect_to garden_path(@garden)
    else
      render :new
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:species, :picture)
  end
end

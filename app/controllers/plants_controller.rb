class PlantsController < ApplicationController

  # GET /plants
  def index
    plants = Plant.all
    render json: plants
  end

  # GET /plants/:id
  def show
    plant = Plant.find_by(id: params[:id])
    render json: plant
  end

  # POST /plants
  def create
    plant = Plant.create(plant_params)
    render json: plant, status: :created
  end

  #DELETE /plant
  def destroy 
    plant = Plant.find_by(id: params[:id])
    plant.destroy
    head :no_content
  end

  #PATCH /plant
  
  def update
    plant = Plant.find_by(id: params[:id])
    plant.update(is_in_stock: false)
    render json: plant, status: :accepted
  end

  # def toggle
  #   plant = plant.find_by(id: params[:id])
  # if plant
  #   plant.update(is_in_stock: false)
  #   render json: plant
  # else
  #   render json: { error: "Blant not found" }, status: :not_found
  # end
  
  # end

  private

  def plant_params
    params.permit(:name, :image, :price, :is_in_stock)
  end
end

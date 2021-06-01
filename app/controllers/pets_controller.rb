class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
  end

private
  def pet_params
    params.require(:pet).permit(:name, :species, :age, :breed, :description, :address, :cost)
  end
end

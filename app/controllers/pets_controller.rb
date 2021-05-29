class PetsController < ApplicationController
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
    params.require(:pet).permit(:name, :specie, :age, :breed, :description, :address, :cost)
  end
end

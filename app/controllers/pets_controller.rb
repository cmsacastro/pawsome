class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  
  def index
    if current_user && current_user.species != "no preference"
        @pets = Pet.where(species: current_user.species).sort_by{ |pet| -pet.match_pets(current_user) }
    else
      @pets = Pet.all
    end
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
    params.require(:pet).permit(:name, :species, :age, :breed, :description, :address, :cost, photos: [])
  end

end

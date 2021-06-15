class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  
  def index
    if current_user && current_user.species != "no preference"
        @pets = Pet.where(species: current_user.species).sort_by{ |pet| -pet.match_pets(current_user) }
    else
      @pets = Pet.all
    end
    @user = current_user
    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
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
    params.require(:pet).permit(:name, :species, :age, :sex, :breed, :description, :address, :cost, photos: [])
  end

end

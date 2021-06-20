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
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user })
      }
    end
  end

  def show
    @pet = Pet.find(params[:id])
    if current_user && current_user.species != "no preference"
      @pets = Pet.where(species: current_user.species).where.not(id: @pet.id).sort_by{ |pet| -pet.match_pets(current_user) }
      @selected_pets = @pets.first(9)
    else
      @selected_pets = Pet.where(species: @pet.species).where.not(id: @pet.id).first(9)
    end
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

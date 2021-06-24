class FavoritePetsController < ApplicationController
  def index
    @favorite_pets = FavoritePet.all
  end

  def show
    @favorite_pet = FavoritePet.find(params[:id])
  end

  def new
    @user = current_user
    @favorite_pet = FavoritePet.new
  end

  def create
    @favorite_pet = FavoritePet.new(favorite_pet_params)
    @favorite_pet.user = current_user
    @favorite_pet.pet = Pet.find(params[:pet_id])
    if @favorite_pet.save
      redirect_to pet_path(@favorite_pet.pet)
    else
      flash.now[:alert] = 'You have already favorited this pet, you egg'
      @pet = @favorite_pet.pet
      render "pets/show"
    end
  end

  private

  def favorite_pet_params
    # param is missing or the value is empty
    params.permit(:pet)
  end
end

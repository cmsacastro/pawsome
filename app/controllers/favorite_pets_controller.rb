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
    @user = current_user
    if @favorite_pet.save
      redirect_to user_favorite_pets_path
    else
      render :new
    end
  end

  private

  def favorite_pet_params
    # param is missing or the value is empty
    params.require(:favorite_pet).permit(:pet_id)
  end
end

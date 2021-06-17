class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user && current_user.species != "no preference"
        @pets = Pet.where(species: current_user.species).sort_by{ |pet| -pet.match_pets(current_user) }
        @selected_pets = @pets.first(9)
    else
      @selected_pets = Pet.first(9)
    end
  end
end

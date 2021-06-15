class UsersController < ApplicationController
  def show
    @conversations = Conversation.where(sender: current_user).or(Conversation.where(recipient: current_user))
  end

  # enquires on my pets is current_user.pets.enquiries
  def edit
    @user = current_user
  end

  def update_preferences
    @user = current_user
    if current_user.save!
      current_user.update(user_params)
      redirect_to pets_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(
      :breed,
      :age,
      :sex,
      :other_pets,
      :other_children,
      :available_time,
      :garden,
      :special_needs,
      :species)
  end
end

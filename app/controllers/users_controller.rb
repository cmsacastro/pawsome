class UsersController < ApplicationController
  def show
    @enquiries = Enquiry.all
  end

  # enquires on my pets is current_user.pets.enquiries
  def edit
    @user = current_user
  end

  def update
    current_user.update(user_params)
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  private
  def user_params
    params.require(:user).permit(:breed, :other_pets, :other_children, :available_time, :garden, :special_needs )
  end
end

class UsersController < ApplicationController
  def show
    @enquiries = Enquiry.all
  end

  # enquires on my pets is current_user.pets.enquiries
end

class UsersController < ApplicationController
  def show
    # TODO: Get rid of this
    @enquiries = Enquiry.all
    # TODO: Filter chatrooms where recipient id or sender id == current user
  end

  # enquires on my pets is current_user.pets.enquiries
end

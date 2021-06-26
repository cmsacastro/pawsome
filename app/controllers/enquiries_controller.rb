class EnquiriesController < ApplicationController
  def index
    #  this is moved to UsersController
  end

  def show

  end

  def new
    @pet = Pet.find(params[:pet_id])
    @enquiry = Enquiry.new
  end

  def create
    @enquiry = Enquiry.new(enquiry_params)
    @pet = Pet.find(params[:pet_id])
    @enquiry.pet = @pet
    @enquiry.user = current_user
    session[:pet_id] = @pet.id
    if @enquiry.save
      redirect_to profile_path
    else
      render :new
    end
  end

  private

  def enquiry_params
    params.require(:enquiry).permit(:message, :date)
  end
end

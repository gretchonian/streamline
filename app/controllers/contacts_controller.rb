class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    if @contact.valid? 
      redirect_to root_path
    else
      flash[:alert] = "Please enter valid information"
      redirect_to contacts_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end

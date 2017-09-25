class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    #  if @contact.valid? 
    #   redirect_to root_path
    #   NotificationMailer.contact_submitted(@contact).deliver
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
  
end

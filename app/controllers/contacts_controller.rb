class ContactsController < ApplicationController
  def new
    @contact=Contact.new
    #binding.pry
  end
  def create
    @contact=Contact.create(contact_params)
      if @contact.save
        redirect_to contacts_new_path, notice:"Content Created！"
      else
        render :new
      end
  end
  private
  def contact_params
    params.require(:contact).permit(:name,:email, :content)
  end
end

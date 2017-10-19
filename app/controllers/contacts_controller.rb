class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(resource_params)

    if @contact.persisted?
      @contact = Contact.new
       flash[:success] = t('success.contact_created')
    end

    render :index
  end

  protected

  def resource_params
    params
      .require(:contact)
      .permit(:name, :phone, :email, :message)
  end

end

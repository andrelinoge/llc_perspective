class Admin::ContactsController < Admin::ApplicationController
  def index
    @contacts = collection
  end

  def show
    @contact = resource
  end

  def destroy
    @contact = resource
    if @contact.destroy
      flash[:success] = 'Message successfully deleted'
    else
      flash[:error] = 'Something went wrong'
    end
    redirect_to admin_contacts_path
  end 

  protected

  def collection
    Contact
  end

  def resource
    collection.find(params[:id])
  end
end

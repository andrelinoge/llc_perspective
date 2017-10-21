class Admin::PagesController < Admin::ApplicationController
  def index
    @pages = collection
  end

  def show
    @page = resource
  end

  def edit
    @page = resource
  end 

  def update
    @page = resource
    if @page.update(resource_params)
      redirect_to [:admin, @page], flash: { success: 'Page successfully updated' }
    else
      render :edit
    end
  end

  protected

  def collection
    Page
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
     params
      .require(:page)
      .permit(:title, :content)
  end
end

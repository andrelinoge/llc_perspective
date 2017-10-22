class Admin::ProjectsController < Admin::ApplicationController
  def index
    @projects = collection
  end

  def show
    @project = resource
  end

  def new
    @project = Project.new
  end 

  def create
    @project = Project.create(resource_params)
    
    if @project.persisted?
      redirect_to [:admin, @project], flash: { success: 'Project successfully updated' }
    else
      render :new
    end
  end

  def edit
    @project = resource
  end 

  def update
    @project = resource
    if @project.update(resource_params)
      redirect_to [:admin, @project], flash: { success: 'Project successfully updated' }
    else
      render :edit
    end
  end

  protected

  def collection
    Project
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
     params
      .require(:project)
      .permit(:title, :content)
  end
end

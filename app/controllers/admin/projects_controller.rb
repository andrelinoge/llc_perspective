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

  def destroy
    @project = resource
    if @project.destroy
      flash[:success] = 'Project successfully deleted'
    else
      flash[:error] = 'Something went wrong'
    end
    redirect_to admin_projects_path
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
      .permit(:title, :description, :image)
  end
end

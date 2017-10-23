class GalleriesController < ApplicationController
  def show
    @projects = Project.all
  end
end

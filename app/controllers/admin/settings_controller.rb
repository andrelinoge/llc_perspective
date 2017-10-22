class Admin::SettingsController < Admin::ApplicationController
  def index
    @settings = collection.get_all
  end

  def edit
    @setting = resource
  end

  def update
    @setting = resource

    if @setting.value != params[:setting][:value]
      @setting.value = params[:setting][:value]
      @setting.save

      redirect_to admin_settings_path, notice: 'Setting has updated.'
    else
      redirect_to admin_settings_path
    end
  end

  protected

  def collection
    Setting
  end

  def resource
    collection.find_by(var: params[:id]) || collection.new(var: params[:id])
  end
end
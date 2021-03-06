class ApplicationController < ActionController::Base
  before_action :set_locale
  protect_from_forgery with: :exception

  protected

  def set_locale
    params[:locale] ||= I18n.default_locale

    if I18n.available_locales.include?(params[:locale].to_sym)
      I18n.locale = params[:locale]
    else
      I18n.locale = I18n.default_locale
      redirect_to root_path
    end
  end

  def default_url_options(options = {})
    options.merge(:locale => I18n.locale)
  end 
end

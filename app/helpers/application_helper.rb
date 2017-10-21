module ApplicationHelper
  def en_locale?
    I18n.locale == :en
  end
end

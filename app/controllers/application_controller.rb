class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_user_language

  def set_user_language
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options={})
    unless I18n.locale == I18n.default_locale
      { locale: I18n.locale } 
    else 
      { locale: nil }
    end
  end
end

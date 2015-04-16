class ApplicationController < ActionController::Base
  before_filter :set_locale

  protect_from_forgery with: :exception

  include SessionsHelper

  # make I18n clear in our urls
  # i.e., shape them like https://domain/en/tickets or https://domain/nl/tickets
  def default_url_options( options = {} )
    { locale: I18n.locale }.merge options
  end

  def set_locale
    I18n.locale = params[ :locale ] || I18n.default_locale
  end
  
end

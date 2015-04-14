class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  # make I18n clear in our urls
  # i.e., shape them like https://domain/en/tickets or https://domain/nl/tickets
  def default_url_options( options = {} )
    { locale: I18n.locale }.merge options
  end

  
end

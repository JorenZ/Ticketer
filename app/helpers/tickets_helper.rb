module TicketsHelper

  def topic_options
    I18n.t(:topic_options).map { |k,v| [ v, k ] }
  end

  def user_options
    users = User.where( "role IN ( 'programmer', 'administrator' )" )
    options = users.collect { | u | ["#{u.name} (#{t(u.role)})", u.id] } 
  end

  def status_options
    I18n.t(:status_options).map { |k, v| [ v, k ] }
  end

  def assignment_status_options 
    I18n.t(:assignment_status_options).map { |k, v| [ v, k ] }
  end
end
module TicketsHelper

  def topic_options
    [ t(:management), t(:finance), t(:callcenter) ]
  end

  def user_options
    users = User.where( "role IN ( 'Programmer', 'Administrator' )" )
    options = users.collect { | u | ["#{u.name} (#{t( u.role.to_sym )})", u.id] } 
  end

  def status_options
    [ t(:all), t(:open), t(:closed), t(:removed) ]
  end

  def assignment_status_options 
    [ t(:all), t(:assigned), t(:unassigned) ]
  end
end
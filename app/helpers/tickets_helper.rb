module TicketsHelper

  def topic_options
		[ 'Management', 'Finance', 'Afsprakenbureau' ]
  end

  def user_options
    users = User.where( "role IN ( 'Programmer', 'Administrator' )" )
    options = users.collect { | u | ["#{u.name} (#{u.role})", u.id] } 
  end

  def status_options
    [ 'all', 'open', 'closed', 'removed' ]
  end

  def assignment_status_options 
    [ 'all', 'assigned', 'unassigned' ]
  end
end
module TicketsHelper

  def topic_options
  		['Management', 'Finance', 'Afsprakenbureau']
  end

  def user_options
      users = User.where( "role IN ( 'Programmer', 'Administrator', 'User' )" )
      options = users.collect { | u | ["#{u.name} (#{u.role})", u.id] } 
  end

end
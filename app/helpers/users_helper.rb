module UsersHelper

  def roles
  		I18n.t(:roles).map { |k, v| [ v, k ] }
  end

end

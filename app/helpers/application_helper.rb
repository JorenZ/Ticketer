module ApplicationHelper

  def nav_item(name, link, paths, *alert)
    url = request.fullpath
    klasses = ['nav']
    if paths.any? { |p| url =~ Regexp.new(p) }
      klasses << 'current'
    end
    link_to name, link, :class => klasses.join(' ')
  end

  def nav_env_item(name, link, paths, *alert)
    url = request.fullpath
    klasses = ['nav env']
    # if paths.any? { |p| url =~ Regexp.new(p) }
    #   klasses << 'current'
    # end
    link_to name, link, :class => klasses.join(' ')
  end


end

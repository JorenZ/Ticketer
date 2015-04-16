module ApplicationHelper

  def nav_item(name, link, paths, *alert)
    url = request.fullpath
    klasses = ['nav']
    if paths.any? { |p| url =~ Regexp.new(p) }
      klasses << 'current'
    end
    link_to name, link, :class => klasses.join(' ')
  end

  def nav_env_item(name, link, *alert)
    url = request.fullpath
    klasses = ['nav env']
    link_to name, link, :class => klasses.join(' ')
  end

  def current_locale
    locale
  end

  def alternate_locales # all but current_locale above
    locales = I18n.available_locales - [I18n.locale]
    locales.map { |l| link_to l, locale: l }.join(', ').html_safe
  end

end

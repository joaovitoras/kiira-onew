module ApplicationHelpernd

  def google_analytics
    if Rails.env.development?
    '<!-- GOOGLE ANALYTICS should be here -->'.html_safe

    '<!-- GOOGLE ANALYTICS should be here -->'.html_safe
    else
      render 'partials/google_analytics'
    end
  end

  def url(*paths, domain: SETTINGS[:main_domain], protocol: 'http', **options)
    paths[0] = paths.first[1..-1] if paths.first && paths.first[0] == '/'
    url = protocol ? ["#{protocol}://#{domain}", *paths].join('/') : [domain, *paths].join('/')
    url.gsub('.json', '')
  end
end

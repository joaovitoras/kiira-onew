# Change this to your host. See the readme at https://github.com/lassebunk/dynamic_sitemaps
# for examples of multiple hosts and folders.
host "kiiraonew.com.br"

sitemap :site do
  url root_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
end

sitemap_for Gallery.all
sitemap_for Sale.all
ping_with "#{host}/sitemap.xml"
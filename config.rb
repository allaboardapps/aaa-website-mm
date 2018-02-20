# encoding: utf-8

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Global Variables
set :site_description, "We develop and maintain software for small businesses and startups. Based in Chicago. Working for anywhere."
set :site_keywords, "application, apps, software, development, design, Rails, JavaScript, React, Randy Burgess"
set :site_name, "All Aboard Apps"
set :author, "Randy Burgess"
set :site_acronym, "AAA"
set :site_email, "randy@allaboardapps.com"
set :site_url, "https://www.allaboardapps.com"
set :cdn_url, "https://s3.amazonaws.com/allaboardapps-website-assets"
set :site_copyright, "© 2016-2018 All Aboard Apps. All Rights Reserved."
set :image_url, "https://s3.amazonaws.com/allaboardapps-website-assets/full_color_with_text_1200x1200.png"
set :ga_id, "UA-107700316-1"
set :bing_validation, "332ADCC9E2D993407E5001016E4C23CC"
set :yandex_validation, "d51149f0d11f3606"
set :facebook_url, "https://www.facebook.com/allaboardapps"
set :linkedin_url, "https://https://www.linkedin.com/company/allaboardapps/"
set :twitter_url, "https://twitter.com/allaboardapps"
set :twitter_handle, "@allaboardapps"
set :site_phone_number, "+1-773-551-6808"

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
  activate :minify_css
  activate :minify_javascript
end

activate :asset_hash
activate :livereload
activate :gzip
activate :sprockets

if defined? RailsAssets
  RailsAssets.load_paths.each do |path|
    sprockets.append_path path
  end
end

set(:port, 8080)

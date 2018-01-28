require 'rubygems'
require 'gollum/app'

gollum_path = "/data"
wiki_options = {
  universal_toc: true,
  allow_uploads: false,
  live_preview: false
}
Precious::App.set(:gollum_path, gollum_path)
Precious::App.set(:default_markup, :markdown) # set your favorite markup language
Precious::App.set(:wiki_options, wiki_options)
run Precious::App

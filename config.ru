require 'rubygems'
require 'gollum/app'

gollum_path = "/data"
wiki_options = {
  universal_toc: false,
  allow_uploads: true
}
Precious::App.set(:gollum_path, gollum_path)
Precious::App.set(:default_markup, :markdown) # set your favorite markup language
Precious::App.set(:wiki_options, wiki_options)
run Precious::App

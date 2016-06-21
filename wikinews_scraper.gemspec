% cat wikinews_scraper.gemspec 

Gem::Specification.new do |s|
  s.name = 'wikinews_scraper'
  s.version = '0.0.0'
  s.date = '2016-06-20'
  s.summary = 'A simple news scraper for the crowd-sourced news site, Wikinews.'
  s.description 'A scraper gem for creating story objects from Wikinews articles.'
  s.author = ['Liz Denhup']
  s.email = 'lizdenhup@gmail.com'
  s.files = ['lib/command_line_interface.rb', 'lib/scraper.rb', 'lib/story.rb', 'bin/run']
  s.homepage = 'http://rubygems.org/gems/wikinews_scraper'
  s.license = 'MIT'

end 
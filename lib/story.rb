require 'open-uri'
require 'nokogiri'
require 'pry'
require 'openssl'

require_relative './scraper.rb'

class Story
  attr_accessor :title, :link, :summary, :text 


end 
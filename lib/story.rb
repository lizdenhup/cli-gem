require 'open-uri'
require 'nokogiri'
require 'pry'
require 'openssl'

require_relative './scraper.rb'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

class Story
  attr_accessor :title, :link, :summary, :article_headline, :article_date, :article_text 


  def self.scrape_article(url)
    article = Nokogiri::HTML(open(url))
    article_headline = article.css('h1.firstHeading').text 
#   article_date = article.css('p .published').text 
    article_text = article.css('p').children.text
#  binding.pry
  end 

end 

Story.scrape_article('https://en.wikinews.org/wiki/%2742-year_detour%27_ends:_Garrison_Keillor_homeward_bound')
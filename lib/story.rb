require 'open-uri'
require 'nokogiri'
require 'pry'
require 'openssl'

require_relative './scraper.rb'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

class Story
  attr_accessor :title, :link, :summary, :text, :article_headline, :article_date


  def self.scrape_article(url)
    article = Nokogiri::HTML(open(url))
    article_headline = article.css('h1.firstHeading').text 
    article_date = article.css('.value-title').text 
#    article_text = 
  binding.pry
  end 

end 

Story.scrape_article('https://en.wikinews.org/wiki/Suicide_bombers_attack_Istanbul%27s_Ataturk_airport')
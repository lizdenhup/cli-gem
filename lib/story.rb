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
#   article_date = article.css('p .published').text 
    article_text = article.css('p').children.text
#  binding.pry
  end 

end 

Story.scrape_article('https://en.wikinews.org/wiki/Messi_speaks_of_Argentina_exit_after_losing_Copa_Am%C3%A9rica_Centenario_over_penalties')
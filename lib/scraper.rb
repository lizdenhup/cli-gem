require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_front_page(url)
    front_page = Nokogiri::HTML(open(url).read)
    front_page.encoding = 'utf-8'
    stories = []

    story_item = front_page.css('l_title + a')
    story_item.each do |item|
      title = story_item.text 
       story = {title: title}
      stories << story if story
      binding.pry 
      end 
      stories 
  end




end 

Scraper.scrape_front_page("https://en.wikinews.org/wiki/Main_Page")

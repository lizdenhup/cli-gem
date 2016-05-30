require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_front_page(url)
    front_page = Nokogiri::HTML(open(url))
    stories = []
    front.page.css('story-heading').each do |h|
      title = 
      author = 
      summary =
      story_url = 
      story = {title: title, author: author, summary: summary, story_url: story_url}
      stories << story 
    end 
    stories 
  end

end 

Scraper.scrape_front_page("http://www.nytimes.com/")
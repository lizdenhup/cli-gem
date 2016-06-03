require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  Scraper::Excluded = [
    "",
    "Your Evening Briefing",
    "Watch",
    "From the Magazine:",
    "Play Today's Puzzle ",
    "Illuminating Comment",
    "/[\n]/g"
  ]

  def self.scrape_front_page(url)
    front_page = Nokogiri::HTML(open(url).read)
    front_page.encoding = 'utf-8'
    stories = []

    story_item = front_page.css('h2.story-heading a').children
    story_item.each do |item|
      title = item.content unless Scraper::Excluded.include?(item.content)
      story = {title: title} if title
      stories << story if story 
    end
    stories 
    binding.pry
  end

end 

Scraper.scrape_front_page("http://www.nytimes.com/")

require 'open-uri'
require 'nokogiri'
require 'pry'
require_relative './story.rb'
class Scraper

  def self.scrape_front_page(url)
    front_page = Nokogiri::HTML(open(url).read)
    front_page.encoding = 'utf-8'
    stories = []

<<<<<<< HEAD
    story_item = front_page.css('.l_box')
    story_item.each do |item|
      # binding.pry 
      title = item.css('.l_title a').text
      link = 'https://en.wikinews.org' + item.css('.l_title a').first.attributes['href'].value
      summary = item.css('.l_summary').first.children.text

      story = Story.new.tap { |s| s.title = title; s.link = link; s.summary = summary}
=======
    story_item = front_page.css('.l_title a')
    story_item.each do |item|
      title = item.text 
      link = 'https://en.wikinews.org' + item.attributes['href'].value
      story = Story.new.tap { |s| s.title = title; s.link = link}
>>>>>>> 86f3a5fe2e963c8d38a3b71d187ccb5388dcae7f
      stories << story if story
      end 
      stories 
      binding.pry
  end




end 

Scraper.scrape_front_page("https://en.wikinews.org/wiki/Main_Page")

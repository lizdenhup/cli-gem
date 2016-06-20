require 'open-uri'
require 'nokogiri'
require 'pry'
require 'openssl'

require_relative './story.rb'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

class Scraper 

  def self.scrape_front_page(url)
    front_page = Nokogiri::HTML(open(url))
    stories = []

    story_item = front_page.css('.l_title a')
    story_item.each do |item|
      title = item.text 
      link = 'https://en.wikinews.org' + item.attributes['href'].value
      story = Story.new.tap { |s| s.title = title; s.link = link}

      stories << story if story
      end 
      stories 
      binding.pry
  end




end 

Scraper.scrape_front_page("https://en.wikinews.org/wiki/Main_Page")

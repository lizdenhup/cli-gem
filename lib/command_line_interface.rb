require_relative "./scraper.rb"
require_relative "./story.rb"
require 'nokogiri'

class CommandLineInterface

  def welcome
    puts "Welcome to WikinewsScraper"
    puts "Would you like to learn about today's news? [Y/n]"
    input = gets.strip.upcase
    if input == "Y"
      self.scrape 
    else 
      puts "Okay, maybe later."
    end 
  end

  def scrape
    stories = Scraper.scrape_front_page('https://en.wikinews.org/wiki/Main_Page')
    stories.each do |story|
      puts story.title.upcase + ',' + "\n"
      puts story.summary + "\n"
      puts "---------"
    end 
  end

  def more
    puts "Would you like to find out more about a story?"
    puts "Enter a number 1-5 to find out more about that particular story."
    input = gets.strip
    case input
      when '1'
      when '2'
      when '3'
      when '4'
      when '5'
      else 
        puts "Input not valid. Please try again!"
        self.more 
    end  
  end 

end
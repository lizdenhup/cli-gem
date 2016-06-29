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
      if input.to_i.between?(1..5)
        puts story[input.to_i - 1].title + "\n"
        # TODO write article scraper, call it here, display article text in terminal
      else 
        puts "Please try again, input not valid!"
        self.more
      end   
    end  
  end 

end
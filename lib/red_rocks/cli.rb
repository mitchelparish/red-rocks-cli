require 'colorize'

class RedRocks::CLI

  def call
    #RedRocks::Scraper.scrape_concerts
    list_concerts
    menu
    goodbye

  end

  def list_concerts
    puts ""
    puts "// Welcome to Red Rocks Park and Amphitheatre!! //".red
    puts ""
    #list all instances of the Concert class with corresponding number
  end

  def menu
    input = nil

    while input != exit
      puts "Which concert would you like to go to? If you're lame, type exit."
      input = gets.strip
  end

  def goodbye
  end
end

require 'colorize'

class RedRocks::CLI

  def call
    #RedRocks::Scraper.scrape
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
      puts "Please select the concert number you wish to see. To bounce, type exit."
      input = gets.strip

      if input.to_i > 0
        concert_choice = RedRocks::Concert.find_by_index(input.to_i - 1)
        if concert_choice = nil
          puts "Be groovy or type exit to leave, man."
          puts "Please select the concert number you wish to see."
        else
          puts "Here's some more information about the selected show..."
        end
      else
        puts "Please try again."
      end
    end
  end

  def goodbye
    puts "Rock on!"
  end
end

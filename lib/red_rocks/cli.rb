require 'colorize'
require 'pry' #remove before submission

class RedRocks::CLI

  def call
    RedRocks::Scraper.scrape
    list_concerts
    menu
    goodbye

  end

  def list_concerts
    puts "  ////                                          \\\\\\\\".red
    puts " /// Welcome to Red Rocks Park and Amphitheatre!! \\\\\\".red
    puts "////                                              \\\\\\\\".red

    concerts = RedRocks::Concert.all
    concerts.each.with_index(1) {|concert, index| puts "#{index}. #{concert.name}"}
  end

  def menu
    input = nil

    while input != exit
      puts "Please select the concert number you wish to see. To bounce, type exit."
      input = gets.strip

      if input.to_i>0
        concert_choice = RedRocks::Concert.find_by_index(input.to_i - 1)
        if concert_choice == nil
          puts "Be groovy or type exit to leave, man."
          puts "Please select the concert number you wish to see."
        else
          puts "/////////////////////////////////////////////////////////////".red
          puts "Red Rocks Park & Amphitheatre is Proud to Present:"
          puts ""
          puts "#{concert_choice.name}"
          puts "Featuring #{concert_choice.opener}"
          puts "On #{concert_choice.date} at #{concert_choice.time}"
          puts "For tickets and more information, please visit:"
          puts "#{tickets_URL}"
          puts ""
          puts "/////////////////////////////////////////////////////////////".red
          puts ""
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

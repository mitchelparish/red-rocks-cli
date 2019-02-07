require 'colorize'
require 'pry' #remove before submission

class RedRocks::CLI

  def call
    RedRocks::Scraper.scrape
    welcome
    list_concerts
    menu
  end

  def welcome
    puts ""
    puts "   //                                            \\\\".red.bold
    puts "  ////                                          \\\\\\\\".red.bold
    puts " /// Welcome to Red Rocks Park and Amphitheatre!! \\\\\\".red.bold
    puts "////                                              \\\\\\\\".red.bold
    puts ""
    puts "To see a current list of concerts, type list.".bold
    puts "To bounce, type exit."
  end

  def list_concerts
    input = gets.strip
    if input == "list"
      puts ""
      concerts = RedRocks::Concert.all
      concerts.each.with_index(1) {|concert, index| puts "#{index}. #{concert.name}"}
    elsif input == "exit"
      exit
    else
      puts ""
      puts "Be groovy or type exit to leave, man.".bold
      puts "To see a current list of concerts, type list."
      list_concerts
    end
  end

  def menu
    # input = nil
    # while input != "exit"
      puts ""
      puts "Please select the concert number you wish to see. To bounce, type exit.".red.bold
      input = gets.strip

      if input.to_i>0
        concert_choice = RedRocks::Concert.find_by_index(input.to_i - 1)
        # if concert_choice == nil
        #   puts "Be groovy or type exit to leave, man."
        #   puts "Please select the concert number you wish to see."
        # else
        puts ""
        puts "///////////////////////////////////////////////////////////////////////////"
        puts "Red Rocks Park & Amphitheatre is Proud to Present:".red
        puts ""
        puts "#{concert_choice.name}".bold
        puts "#{concert_choice.opener}"
        puts "On #{concert_choice.date} at #{concert_choice.time}"
        puts "For tickets and more information, please visit:".cyan
        puts "#{concert_choice.tickets_URL}"
        puts ""
        puts "///////////////////////////////////////////////////////////////////////////"
        menu
      elsif
        input == "exit"
        puts ""
        puts "See ya out there!!".bold
        puts ""
      else
        puts "Please try again."
        menu
      end
  end
end

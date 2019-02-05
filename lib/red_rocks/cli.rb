require 'colorize'

class RedRocks::CLI

  def call
    list_concerts
    menu
  end

  def list_concerts
    puts ""
    puts "Welcome to Red Rocks Amphitheatre!!".red
    puts ""
    puts "Please select a concert below:"
    puts ""
    puts "1. Concert_name1"
    puts "2. Concert_name2"
    puts "3. Concert_name3"
    puts ""
  end

  def menu
    puts "Please enter the concert number you wish to see:"
  end

end

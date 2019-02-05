require 'colorize'

class RedRocks::CLI

  def call
    puts ""
    puts "Welcome to Red Rocks Amphitheater!!".red
    list_concerts
  end

  def list_concerts
    puts ""
    puts "Please select a concert below:"
    puts ""
    puts "Concert 1"
    puts "Concert 2"
    puts "Concert 3"
    puts ""
    puts "Please enter the concert number you wish to see:"
  end


end

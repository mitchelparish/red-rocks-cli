require 'pry'
require 'nokogiri'
require 'open-uri'

class RedRocks::Scraper

  def self.scrape_concerts
    page = Nokogiri::HTML(open("https://www.redrocksonline.com/events/category/Concerts"))


end

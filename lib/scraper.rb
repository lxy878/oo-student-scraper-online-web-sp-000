require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url)).css("div.student-card")
    a = doc.first
    # name = a.css("h4.student-name").text
    array = []
    binding.pry
  end

  def self.scrape_profile_page(profile_url)

  end

end

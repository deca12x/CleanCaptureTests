require 'open-uri'
require 'nokogiri'

class Website
  def initialize(url)
    @url = url
    @scrape = {}
  end

  def make_hash(pages)
    @scrape = {}
    pages.each do |page|
      page == '' ? website_text['home'] = scrape(page) : website_text[page] = scrape(page)
    end
    @scrape # website_text is a hash like this { page_name => "full concatenated string"... }
  end

  private

  def scrape(page)
    html_string = "#{@url}#{page}"
    html_parsed = Nokogiri::HTML(URI.open(html_string).read)
    sentences = []
    html_parsed.search('p').each { |element| sentences << element.text.strip }
    sentences.join(' ')
  end
end

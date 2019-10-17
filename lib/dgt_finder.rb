require 'dgt_finder/scrapper'
require 'dgt_finder/response_parser'

module DGTFinder
  def self.fine?(text = '')
    ResponseParser.new(Scrapper.new.scrap(text)).fine?
  end
end

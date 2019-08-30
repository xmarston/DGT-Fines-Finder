# frozen_string_literal: true

module Finder
  require_relative './finder/scrapper'
  require_relative './finder/response_parser'

  def self.fine?(text = '')
    ResponseParser.new(Scrapper.new.scrap(text)).fine?
  end
end

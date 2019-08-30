# frozen_string_literal: true

require_relative 'finder/scrapper'
require_relative 'finder/response_parser'
require 'slop'

opts = Slop.parse do |o|
  o.string '-t', '--text', 'text to find'
  o.on '--version', 'print the version' do
    puts Slop::VERSION
    exit
  end
end

puts "Searching fines for #{opts[:text]}"
puts ResponseParser.new(Scrapper.new.scrap(ENV['TEXT'] || opts[:text])).fine?

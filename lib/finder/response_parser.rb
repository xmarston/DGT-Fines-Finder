# frozen_string_literal: true

module Finder
  class ResponseParser
    def initialize(response = '')
      @response = response
    end

    def fine?
      !@response.include? 'No existen resultados para la búsqueda especificada'
    end
  end
end

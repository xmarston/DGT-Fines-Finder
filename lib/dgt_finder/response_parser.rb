module DGTFinder
  class ResponseParser
    NO_FINE = 'No existen resultados para la búsqueda especificada'

    def initialize(response = '')
      @response = response
    end

    def fine?
      !@response.include? NO_FINE
    end
  end
end

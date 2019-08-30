# frozen_string_literal: true

class ResponseParser
  def initialize(response = '')
    @response = response
  end

  def fine?
    !@response.include? 'No existen resultados para la búsqueda especificada'
  end
end

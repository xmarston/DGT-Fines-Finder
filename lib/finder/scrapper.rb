# frozen_string_literal: true

require 'selenium/webdriver'

class Scrapper
  def initialize
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--headless')
    @driver = Selenium::WebDriver.for :chrome, options: options
  end

  def scrap(text = '')
    @driver.navigate.to url

    @driver.switch_to.frame @driver.find_element(name: 'iframe')
    input = @driver.find_element(class: 'textoBotonBuscar')
    input.clear
    input.send_keys text

    search_button = @driver.find_element :css, 'input[title="Buscar"]'
    search_button.click

    message = @driver.find_element(:class, 'mensajeInformativo').text

    @driver.close

    message
  end

  private

  def url
    'https://sede.dgt.gob.es/es/aplicaciones/testra-sin-certificado.shtml'
  end
end

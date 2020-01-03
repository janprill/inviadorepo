require 'json'

class ConfigService
  attr_accessor :json

  def initialize
    filename = '/Users/jan.prill/.secrets/inviado.settings.json'
    @json = JSON.parse(File.read(filename))
  end
end
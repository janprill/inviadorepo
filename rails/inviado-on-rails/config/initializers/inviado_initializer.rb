require 'json'
require 'inviado/config_service'

secret = ConfigService.new
json = secret.json
Rails.application.config.x.inviado.bing_key = json['bing']['key']
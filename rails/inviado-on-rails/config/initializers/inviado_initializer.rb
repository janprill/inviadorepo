require_relative '../../lib/inviado/config.rb'
require 'json'

secret = Inviado::Config.new
json = secret.json
Rails.application.config.x.inviado.bing_key = json['bing']['key']
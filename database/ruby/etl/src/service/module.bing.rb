require 'json'

# Provides methods to extract results from responses to request to the Bing Websearch API. 
module Inviado
  module Etl
    module Bing

      def self.parse_json_response(json)
        object = JSON.parse(json, object_class: OpenStruct)
        object
      end

    end
  end
end
require 'net/https'
require 'uri'
require 'json'

class SearchService

  def initialize()
    @accessKey = Rails.application.config.x.inviado.bing_key
    @uri  = "https://api.cognitive.microsoft.com"
    @path = "/bing/v7.0/search"
    if @accessKey.length != 32 then
        puts "Invalid Bing Search API subscription key!"
        puts "Please paste yours into the source code."
        abort
    end
  end
  
  def build_uri(term, site)
    searchterm = (site.nil? ? term : build_site_query(term, site))

    endpoint = "#{@uri}#{@path}?q=#{URI.escape(term)}&mkt=de-DE"
    puts "Searching the Web for: " + endpoint

    URI(endpoint)
  end

  def build_site_query(term, site) 
    "site:#{site} AND #{term}"
  end
  
  def query(term)
    uri = build_uri(term, nil)
    request = Net::HTTP::Get.new(uri)
    request['Ocp-Apim-Subscription-Key'] = @accessKey
    
    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        http.request(request)
    end
    
    puts "\nRelevant Headers:\n\n"
    response.each_header do |key, value|
        if key.start_with?("bingapis-") or key.start_with?("x-msedge-") then
            puts key + ": " + value
        end
    end
    
    puts "\nJSON Response:\n\n"
    # puts JSON::pretty_generate(JSON(response.body))

    JSON::pretty_generate(JSON(response.body))
  end


end

require "#{__dir__}/../../src/service/module.bing"

## ---------------------
Given("bing responded with a json answer") do
  path = "#{__dir__}/../resources/test.json"
  file = File.open(path).read
  @data = ''
  file.each_line do |line|
    @data += line
  end
end

When("I parse this json.") do
  @object = Inviado::Etl::Bing.parse_json_response(@data)
end

Then("I should be able to extract the first result") do
  @first_result = @object.webPages.value[0]
  expect(@first_result).not_to be_nil
end

Then("the uri of this first result should be {string}") do |string|
  expect(@first_result.url).to eq(string)
end

## ---------------------
# Given("a query term") do
#   @term = "Seca GmbH"
# end

# When("I ask a search object to query this term") do
#   @searcher = Inviado::Etl::Bing::Search.new
# end

# Then("I should receive results from the bing api") do
#   @searcher.query(@term)
# end

## ---------------------
Given("the site of an organization, e.g. {string} and a term like {string}") do |org, searchterm|
  @organization = org
  @searchterm = searchterm
  @searcher = Inviado::Etl::Bing::Search.new 
end

When("I ask for a combined search term") do
  @concatenated = @searcher.build_site_query(@searchterm, @organization)
end

Then("I should get a searchterm in bing syntax like {string}") do |string|
  expect(@concatenated).to eq(string)
end

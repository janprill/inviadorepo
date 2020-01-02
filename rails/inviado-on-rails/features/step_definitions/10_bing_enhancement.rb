require 'uri'


Given("data, here: organizations, retrievable from the db") do
  @name = 'Inviado Ltd'
end

When("an organization has the name of {string}") do |string|
  @name = string
end

When("no site-url is known") do
  @site = nil
end

Then("a simple query should be constructed {string}") do |string|
  if (@site.nil?)
    @query = @name
  end

  assert_equal string, @query
  assert @site.nil?
end

When("there is a name like {string} and a site like {string}") do |orgname, website|
  @name = orgname
  @site = website
end

Then("the query should be site-scoped like {string}") do |string|
  assert !@site.nil?
  search_service = SearchService.new
  query = search_service.build_site_query(@name, @site)
  assert_equal string, query
end

Given("an organization name") do
  @name = 'MSP AG'
end

When("the websearch api is queried") do
  search_service = SearchService.new
  @response = search_service.query(@name)
end

Then("bing answeres with a json response that is parseable") do
  object = JSON.parse(@response, object_class: OpenStruct)
  assert_equal 10, object.webPages.value.size
end

Given("a json answer") do
  search_service = SearchService.new
  @response = search_service.query('MSP AG')
end

When("the json is parsed") do
  @object = JSON.parse(@response, object_class: OpenStruct)
end

Then("a url and a description is extractable") do
  item = @object.webPages.value.first
  @snippet = item.snippet
  @url = item.url
end

When("the url and description are extracted and persisted as a link to enhance the data") do
  p "snippet and url: #{@snippet} - #{@url}"
end

Then("the links size is raised") do
  org = Organization.create(name: 'MSP AG')
  org.links << Link.create(uri: @url, description: @snippet)
end

When("the base domain of the url is extracted") do
  uri = URI(@url)
  @host = uri.host

end

Then("the base domain should be {string}") do |string|
  assert_equal string, @host
end
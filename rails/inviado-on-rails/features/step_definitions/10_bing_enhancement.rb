

Given("data, here: organizations, retrievable from the db") do
  @name = 'Inviado Ltd'
end

When("an organization has the name of {string}") do |string|
  @name = string
  @query = string
end

When("no site-url is known") do
  @site = nil
end

Then("a simple query should be constructed {string}") do |string|
end

When("there is a name like {string} and a site like {string}") do |orgname, website|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the query should be site-scoped like {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("an organization name") do
  @name = 'MSP AG'
end

When("the websearch api is queried") do
  search_service = SearchService.new
  search_service.query(@name)
end

Then("bing answeres with a json response that is parseable") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("a json answer") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("the json is parsed") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("a url and a description is extractable") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("the url and description are extracted") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("this information is persisted as a link to enhance the data") do
  pending # Write code here that turns the phrase above into concrete actions
end
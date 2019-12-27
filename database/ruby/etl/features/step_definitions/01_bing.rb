require "#{__dir__}/../../src/service/module.bing"

Given("bing responded with a json answer") do
  path = "#{__dir__}/../resources/test.json"
  file = File.open(path).read
  data = ''
  file.each_line do |line|
    p "#{line}"
    data += line
  end

  object = Inviado::Etl::Bing.parse_json_response(data)
  p "===================================="
  p object.inspect
  object.webPages.value.each do |v|
    p ''
    p v.displayUrl
    p v.snippet
    p '----------------------------'
  end

end

When("I parse this json") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be able to extract the first result") do
  pending # Write code here that turns the phrase above into concrete actions
end
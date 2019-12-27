Given("bing responded with a json answer") do
  file = File.open("#{__dir__}/../resources/test.json").read
  file.each_line do |line|
    p "#{line}"
  end

end

When("I parse this json") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be able to extract the first result") do
  pending # Write code here that turns the phrase above into concrete actions
end
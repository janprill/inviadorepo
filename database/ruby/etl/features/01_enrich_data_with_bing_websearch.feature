Feature: Parse bing websearch results
  As a prerequisite of enriching data via bing websearch result we need to be able to parse the results bing is responding with.

  Scenario: bing responded with a json result
    Given bing responded with a json answer
    When I parse this json
    Then I should be able to extract the first result
    And the uri of this first result should be "https://www.seca.com/de_de/unternehmen/karriere.html"

  Scenario: bing is searched with a query term
    Given a query term
    When I ask a search object to query this term
    Then I should receive results from the bing api
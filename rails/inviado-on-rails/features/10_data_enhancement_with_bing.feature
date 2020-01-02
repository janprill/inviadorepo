# Prerequisite: there needs to be data in the db to enhance in the first place 
# The feature: available data should be enhanced with searchresults found via bing websearch

Feature: Enhance data via bing websearches

  Scenario: Retrieve data from the db and construct queries
    Given data, here: organizations, retrievable from the db
    When an organization has the name of "Inviado Ltd & Co KG"
    But no site-url is known
    Then a simple query should be constructed "Inviado Ltd & Co KG"

    When there is a name like "Inviado Ltd & Co KG" and a site like "inviado.com"
    Then the query should be site-scoped like "site:inviado.com AND Inviado Ltd & Co KG"

  @vcr
  Scenario: Query the bing websearch api
    Given an organization name
    When the websearch api is queried
    Then bing answeres with a json response that is parseable

  @vcr
  Scenario: Parsing the result
    Given a json answer
    When the json is parsed
    Then a url and a description is extractable

    When the url and description are extracted and persisted as a link to enhance the data
    Then the links size is raised

    When the base domain of the url is extracted
    Then the base domain should be "www.mspag.com"

  @vcr
  Scenario: Enhancement of data
    Given an array of scopes like 
      | Impressum | Kununu | Glassdoor |
    When a first websearch for the homepage is done
    Then combined searches with a site scope might follow as
      | site:todo AND Impressum | todo AND Kununu | todo AND Glassdoor |


# Prerequisite: there needs to be data in the db to enhance in the first place 
# The feature: available data should be enhanced with searchresults found via bing websearch

Feature: Enhance data via bing websearches

  Scenario: Retrieve data from the db and construct queries
    Given data (here: organizations) retrievable from the db
    When an organization has the name of {Inviado Ltd & Co KG}
    But no site-url is known
    Then a simple query should be constructed {todo}

    When there is a name like {Inviado Ltd & Co KG} and a site like {inviado.com}
    Then the query should be site-scoped like {todo}
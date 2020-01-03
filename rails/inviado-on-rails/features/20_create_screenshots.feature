Feature: Create Screenshots of the main websites of organizations
 
  With the prerequisite ofk a database of organizations we're retrieving screenshots of the organizations main websites. This gives 
  users a quick way to get an impression of websites of organizations she/he is interested in.

  Scenario: birds eye view of the screenshot feature
  Given a list of organizations with main site uris
  When screenshots of the sites are retrieved
  Then they should be persisted in the database and on the filesystem

  
  
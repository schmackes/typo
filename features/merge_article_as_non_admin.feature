Feature: Merge article
  As a publisher (non-administrator)
  In order to ...
  I should not be able to merge articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel as non-admin
  
  Scenario: A non-admin cannot merge two articles
   Given I have an article "Welcome to Zurich" from "Markus" with text "It is so nice in ZH."
   And I am on the admin content page
   When I follow "Welcome to Zurich"
   Then I should not see "merge_with"
   And I should not see "Merge Articles"

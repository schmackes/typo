Feature: Merge article
  As a publisher (non-administrator)
  In order to ...
  I should not be able to merge articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel as non-admin
  
  Scenario: A non-admin cannot merge two articles
   Given I am on the admin content page
   And I have an article Welcome_to_Zurich
   When I follow Welcome_to_Zurich
   Then I should not see "Merge Articles" #maybe better with ID

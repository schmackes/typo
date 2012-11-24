Feature: Show categories
  As an administrator
  In order to manage categories for article
  I need to have an overview of all existing categories.

  Background:
    Given the blog is set up
    And I am logged into the admin panel
  
  Scenario: An admin sees categories overview page
   Given I have a category "Sports"
   And I am on the dashboard page
   When I follow "Categories"
   Then I should see "Categories"
   And I should see "Sports"
   And I should not see "Couldn't find Category without an ID"

   


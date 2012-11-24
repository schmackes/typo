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

   Scenario: An admin creates a new category
   Given I am on the admin categories page
   When I fill in "category_name" with "Allerlei"
   And I fill in "category_keywords" with "Dies, Das"
   And I fill in "category_permalink" with "allerlei"
   And I fill in "category_description" with "this is for anything else"
   And I press "Save"
   Then I am on the admin categories page
   And I should see "Allerlei"
   And I should see "Dies, Das"
   And I should see "allerlei"
   And I should see "this is for anything else"

   Scenario: An admin edits an existing category
   Given I have a category "Sports"
   And I am on the admin categories page
   And I follow "Sports"
   When I fill in "category_name" with "Activities"
   And I press "Save"
   Then I am on the admin categories page
   And I should see "Activities"
   And I should not see "Sports"
   


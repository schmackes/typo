Feature: Merge article
  As a blog administrator
  In order to avoid several articles on the same topic
  I should not be able to merge articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
  
  Scenario: When articles are merged, the merged article should contain the text of both previous articles
   Given I have an article "Welcome to Zurich" from "Markus" with text "It is so nice here."
   And I have an article "Welcome to Kanton Zurich" from "Mac" with text "Zurich is such a nice place."
   And I am on the admin content page			     
   When I follow "Welcome to Zurich"
   And I calculate and fill in "article_merge_id" with "Welcome to Kanton Zurich"
   And I press "Merge With This Article"
   Then I should be on the admin content page
   When I follow "Welcome to Zurich"
   Then I should see "It is so nice here.Zurich is such a nice place."

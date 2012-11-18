Feature: Merge article
  As a blog administrator
  In order to avoid several articles on the same topic
  I should not be able to merge articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
  
  Scenario: When articles are merged, the merged article should contain the text of both previous articles
   Given I have an article Welcome_to_Zurich from Markus with text "It is so nice here." with id "100"
   And I have an article Welcome_to_Kanton_Zurich from Mac with text "Zurich is such a nice place." with id "200"
   And I am on the admin content page			     
   When I follow "Welcome_to_Zurich"
   And I fill in "article_merge_id" with "200"
   And I press "Merge With This Article"
   Then I should be on the admin content page
   When I follow "Welcome_to_Zurich"
   Then I should see "It is so nice here. Zurich is such a nice place."

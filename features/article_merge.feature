Feature: Merge Articles
  As a blog administrator
  in order to organize similar articles together
  I want to be able to merge articles


  Scenario: non-Admin cannot Merge
    Given the blog is set up
    And I am not logged into the admin panel
    And I am on the new article page
    Then I should not see "Merge"

  Scenario: Merged Articles have content from both articles
    Given the blog is set up
    And I am logged into the admin panel
    And I am on the admin content page
    When I am on the edit article page for 1
    And I fill in "merge_with" with "2"
    And I press "Merge"
    And I go to the edit article page for 1
    Then I should see content for article 1
    And I should see content for article 2

  Scenario: Merged Articles have one author

  Scenario: Merged Articles have comments from both articles

  Scenario: Merged Articles have title from one article

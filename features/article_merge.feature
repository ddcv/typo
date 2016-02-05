Feature: Merge Articles
  As a blog administrator
  in order to organize similar articles together
  I want to be able to merge articles


  Scenario: non-Admin cannot Merge
    Given the blog is set up
    And I am on the new article page
    And I am not logged into the admin panel
    Then I should not see "Merge"

  Scenario: Merge Articles
    Given the blog is set up
    And I am logged into the admin panel
    And I am on the admin content page
    When I follow "Foobar"
    Then I should be on the article edit page for "FooBar"
    When I fill in "merge_article_id" with "02"
    and I press "Merge"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Foobar"
    When I follow "Foobar"
    Then I should see "Lorem Ipsum"
    And I should see "Text Mania"
    And I should see "This article rules"
    And I should see "This article sucks"

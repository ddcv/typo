Feature: Create Categories
  As a blog administrator
  In order to organize my articles
  I want to be able to see the categories page
  and create a category

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully visit category page
    Given I am on the admin content page
    When I follow "Categories"
    Then I should be on the new category page

  Scenario: Create a category
    Given I am on the new category page
    When I fill in "category_name" with "Foobar"
    And I press "Save"
    Then I should see "Category was successfully saved."
    When I go to the new article page
    Then I should see "Foobar"


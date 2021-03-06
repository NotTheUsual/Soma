Feature: Dashboard
  In order to track all the information about my health in one place
  As a health tracker
  I want to see a homepage

Background:
  Given I enter the results

  Scenario: Homepage navigation
    Given I visit the homepage
    Then I can go to a new blood test form
    And I can go to my existing results

  @javascript
  Scenario: Graphs
    Given I visit the homepage
    Then I should see a graph

  Scenario: JSON data
    Given I visit the JSON page for "hb"
    Then I should see JSON data

  Scenario: view results as json
    Given I am on the json page for all results
    Then I should see the results arranged by test name


  @javascript
  Scenario: Graphs
    Given I visit the homepage
    Then I should only see the hb graph
    And when I click on alt
    Then I should only see the graph for alt

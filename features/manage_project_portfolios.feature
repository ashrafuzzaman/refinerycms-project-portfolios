@project_portfolios
Feature: Project Portfolios
  In order to have project_portfolios on my website
  As an administrator
  I want to manage project_portfolios

  Background:
    Given I am a logged in refinery user
    And I have no project_portfolios

  @project_portfolios-list @list
  Scenario: Project Portfolios List
   Given I have project_portfolios titled ProjectOne, ProjectTwo
   When I go to the list of project_portfolios
   Then I should see "ProjectOne"
   And I should see "ProjectTwo"

  @project_portfolios-valid @valid
  Scenario: Create Valid Project Portfolio
    When I go to the list of project_portfolios
    And I follow "Add New Project Portfolio"
    And I fill in "Project Name" with "This is a test of the first string field"
    And I fill in "Tag List" with "ruby, rails, amazon"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 project_portfolio

  @project_portfolios-invalid @invalid
  Scenario: Create Invalid Project Portfolio (without project_name)
    When I go to the list of project_portfolios
    And I follow "Add New Project Portfolio"
    And I press "Save"
    Then I should see "Project Name can't be blank"
    And I should have 0 project_portfolios

  @project_portfolios-edit @edit
  Scenario: Edit Existing Project Portfolio
    Given I have project_portfolios titled "A project_name"
    When I go to the list of project_portfolios
    And I follow "Edit this project_portfolio" within ".actions"
    Then I fill in "Project Name" with "A different project_name"
    And I press "Save"
    Then I should see "'A different project_name' was successfully updated."
    And I should be on the list of project_portfolios
    And I should not see "A project_name"

  @project_portfolios-duplicate @duplicate
  Scenario: Create Duplicate Project Portfolio
    Given I only have project_portfolios titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of project_portfolios
    And I follow "Add New Project Portfolio"
    And I fill in "Project Name" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 project_portfolios

  @project_portfolios-delete @delete
  Scenario: Delete Project Portfolio
    Given I only have project_portfolios titled UniqueTitleOne
    When I go to the list of project_portfolios
    And I follow "Remove this project portfolio forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 project_portfolios
 
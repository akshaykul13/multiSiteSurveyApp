Feature: Taking a survey

Background:
  Given I am logged in
  Then I should be on the surveys home page
  When I follow "Create New Survey"
  Then I should be on the Create New Survey page
  When I fill in "Survey Name" with "My Test Survey"
  And I fill in "Surveyor Name" with "Mr. XYZ"
  And I fill in "Survey Description" with "Details"
  And I press "Save Changes"
  Then I should be on the surveys home page
  And I should see "My Test Survey"

  When I follow "My Test Survey"
  Then I should be on the Questions page for My Test Survey
  When I follow "Create New Question"
  Then I should be on the New Questions page for My Test Survey
  When I fill in "Question" with "Cucumber Question"
  And I select "Open Ended" from "Response Type"
  And I fill in "Response Values" with "Open ended Response"
  And I press "Save Changes"
  Then I should be on the Questions page for My Test Survey
  And I should see "Cucumber Question"
  When I sign out
  Then I should see "Log in"

Scenario:
  Given User is logged in
  Then I should be on the surveys home page
  When I follow "My Test Survey"
  Then I should be on the Response page for My Test Survey
  When I fill in "Cucumber Question" with "Cucumber Response"
  And I press "Save Changes"
  Then I should be on the surveys home page
Feature: Question Fields can't be empty 

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

Scenario: Response Type can't be empty for multiple choice questions

  When I follow "My Test Survey"
  Then I should be on the New Questions page for XYZ
  When I fill in "Question" with "Cucumber Question"
  And I select "multiple_choice" from "Response Type"
  And I press "Save Changes"
  And I should see "Error:" 
  
Scenario: Question field can't be empty

  When I follow "My Test Survey"
  Then I should be on the New Questions page for XYZ
  And I select "open_ended" from "Response Type"
  And I press "Save Changes"
  And I should see "Error:" 

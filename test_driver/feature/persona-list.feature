@persona
Feature: Persona List
    Some description of the feature

    Scenario: Verify that Wedge Antilles is present on the persona list
        Given I expect the "persona" to be "See All Persons"
        And I pause for 5 seconds
        When I tap the "persona" button
        And I pause for 10 seconds
        And I scroll down until "Wedge Antilles" is visible
        Then I expect the "card-16" to be "Wedge Antilles"
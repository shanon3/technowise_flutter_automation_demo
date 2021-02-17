@persona-list
Feature: Persona List
    Some description of the feature

    Scenario: Verify that Wedge Antilles is present on the persona list
        Given I expect the "persona" to be "See All Persons"
        When I tap the "persona" button
        And I pause for 5 seconds
        And I scroll down until "Wedge Antilles" is visible
        Then I expect the "card-16" to be "Wedge Antilles"
    
    Scenario: Verify multiple person on a page
        Given I expect the "persona" to be "See All Persons"
        When I tap the "persona" button
        And I pause for 5 seconds
        Then the following persons should be displayed
            | Name              |
            | Luke Skywalker    |
            | C-3PO             |
            | R2-D2             |
            | Darth Vader       |
            | Leia Organa       |
            | Owen Lars         |
            | Beru Whitesun lars|
            | R5-D4             |
            | Biggs Darklighter |
            | Obi-Wan Kenobi    |
            | Anakin Skywalker  |
            | Wilhuff Tarkin    |
            | Chewbacca         |    


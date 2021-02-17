@persona
Feature: Persona list test using scenario outline

    Add some description here

    Scenario Outline: Verify list of persons
        Given I expect the "persona" to be "See All Persons"
        When I tap the "persona" button
        And I pause for 5 seconds
        Then I expect the "<Widget>" to be "<Name>"

        Examples:
            | Widget    | Name              |
            | card-0    | Luke Skywalker    |
            | card-1    | C-3PO             |
            | card-2    | R2-D2             |
            | card-3    | Darth Vader       |
            | card-4    | Leia Organa       |
            | card-5    | Owen Lars         |
            
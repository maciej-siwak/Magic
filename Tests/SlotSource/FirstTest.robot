*** Settings ***
Documentation    Practice a basic test
Resource         ../../Resources/common.robot
Resource         ../../Resources/Steps/navigation_steps.robot
Resource         ../../Resources/Steps/action_steps.robot
Resource         ../../Resources/Steps/assertion_steps.robot

*** Test Cases ***
User is able to open SS Ireland website
    [Tags]  User is able to open SS Ireland website
    Given I open a browser
    When I navigate to the 'Slotsource Ireland' page
    Then I should see the page title Best Online Slots 2022 | Top Online Casino Slots Ireland
    And I close the browser

User is able search for Peaky Blinders on the Free Slots page
    [Tags]  User is able search for Peaky Blinders on the Free Slots page
    Given I open a browser
    And I navigate to the 'Slotsource Free Slots' page
    When I enter Peaky Blinders into the Free Slots Search Text Box
    Then I am able to see the game Peaky Blinders
    And I close the browser
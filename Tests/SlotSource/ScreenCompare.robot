*** Settings ***
Documentation    Practice a basic test
Resource         ../../Resources/common.robot
Resource         ../../Resources/Steps/navigation_steps.robot
Resource         ../../Resources/Steps/action_steps.robot
Resource         ../../Resources/Steps/assertion_steps.robot

*** Test Cases ***

User is able to compare full screen screenshots of current screen to the baseline version
    [Tags]  User is able to compare full screen screenshots of current screen to the baseline version
    Given I open a browser
    And I navigate to the 'Slotsource Free Slots' page
    When I enter Sneaky Blinders into the Free Slots Search Text Box
    Then The current screen matches the baseline version
    And I close the browser

User is able to compare full screens of Free Slots Licensing Authorities section
    [Tags]  User is able to compare full screens of Free Slots Licensing Authorities section
    Given I open a browser
    And I navigate to the 'Slotsource Free Slots' page
    And I scroll to element 'Licensing Authorities and Testing Agencies'
    Then The current screen matches the baseline version
    And I close the browser

User is able to compare screenshots of element SS Payment Icons
    [Tags]  User is able to compare screenshots of element SS Payment Icons
    Given I open a browser
    And I navigate to the 'Slotsource Ireland' page
    And I scroll to element 'Payment Method Icons'
    Then The element 'Payment Method Icons' matches the baseline version
    And I close the browser

User is able to compare screenshots of element SS Discover Icons
    [Tags]  User is able to compare screenshots of element SS Discover Icons
    Given I open a browser
    And I navigate to the 'Slotsource Ireland' page
    And I scroll to element 'Discover Icons'
    Then The element 'Discover Icons' matches the baseline version
    And I close the browser

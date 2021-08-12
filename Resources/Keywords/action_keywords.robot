*** Settings ***
Documentation    Suite description
Resource         ../../Resources/PageObjects/site_locators.robot
Library  SeleniumLibrary
Library  Collections

*** Keywords ***

Enter ${game} into Free Slots Search Text Box
    input text  ${free_slot_input_box}  ${game}

Scroll to element ${element}
    Load Dictionary
    ${value}  Get From Dictionary  ${locatorDictionary}  ${element}
    scroll element into view    ${value}

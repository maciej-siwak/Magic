*** Settings ***
Documentation    Suite description
Resource         ../../Resources/Keywords/action_keywords.robot

*** Keywords ***
I enter ${game} into the Free Slots Search Text Box
    Enter ${game} into Free Slots Search Text Box

I scroll to section Licensing Authorities and Testing Agencies
    Scroll to section

I scroll to element ${element}
    Scroll to element ${element}
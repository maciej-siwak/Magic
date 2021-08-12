*** Settings ***
Documentation    Suite description
Resource         ../../Resources/PageObjects/site_locators.robot
Library  SeleniumLibrary
Library  Collections
Library  RobotEyes

*** Keywords ***
Assert ${title} Exists
    title should be  ${title}

Assert ${game} Is Shown
    element text should be  ${slot_title_locator}  ${game}

Assert Screenshots
    Execute javascript      document.body.style.zoom="50%"
    open eyes               SeleniumLibrary  5
    capture full screen
    compare images

Assert Screenshot Element ${element}
    Load Dictionary
    ${value}                Get From Dictionary  ${locatorDictionary}  ${element}
    open eyes               SeleniumLibrary  5
    capture element         ${value}
    compare images
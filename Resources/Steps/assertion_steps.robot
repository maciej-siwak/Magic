*** Settings ***
Documentation    Suite description
Resource         ../../Resources/Keywords/assertion_keywords.robot


*** Keywords ***
I should see the page title ${title}
    Assert ${title} Exists

I am able to see the game ${game}
    Assert ${game} Is Shown

The current screen matches the baseline version
    Assert Screenshots

The element ${element} matches the baseline version
    Assert Screenshot Element ${element}

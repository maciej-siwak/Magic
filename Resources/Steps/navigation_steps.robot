*** Settings ***
Documentation    Steps for page navigation
Resource         ../../Resources/Keywords/navigation_keywords.robot

*** Keywords ***
I navigate to the ${website} page
    Run Keyword If  ${website}== 'Slotsource UK'           Go To Slotsource UK Website
    ...   ELSE IF   ${website}== 'Slotsource Ireland'      Go To Slotsource Ireland Website
    ...   ELSE IF   ${website}== 'Slotsource Free Slots'   Go To Slotsource Free Slots Page
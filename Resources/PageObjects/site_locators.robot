*** Settings ***
Documentation    Suite description

*** Keywords ***

Load Dictionary
    ${locatorDictionary}  Create Dictionary  'Discover Icons'                               ${discover_icons}
    Set Global Variable  ${locatorDictionary}
    #Filter Dropdowns
    Set To Dictionary  ${locatorDictionary}  'Payment Method Icons'                         ${payment_icons}
    Set To Dictionary  ${locatorDictionary}  'Licensing Authorities and Testing Agencies'   ${authorities_agencies}

*** Variables ***
${free_slot_input_box}      xpath=//*[@class="search"]
${slot_title_locator}       xpath=//span[@class="alphabetical"]
${authorities_agencies}     xpath=//h3[@class="menu-title"]
${payment_icons}            xpath=//div[@class="ss-slot-operators-container ss-slot-operators-container--padding-top ss-slot-operators-container--padding-bottom"]
${content}                  xpath=//div[@class="component__content "]
${ss-site-footer}           xpath=//footer[@class="ss-site-footer"]
${discover_icons}           xpath=//div[@class="col-md-10 col-md-offset-2"]
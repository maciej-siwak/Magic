*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
I open a browser
    open browser  about:blank  chrome
    maximize browser window

I close the browser
    close browser
    log  Test Complete

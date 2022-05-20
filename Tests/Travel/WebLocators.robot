*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demostrate Weblcators in Robot FW
    [Documentation]  This is sample test case to demonstrate Weblocators in Robot FW

    Open Browser   http://www.ebay.com  chrome
    Maximize Browser Window
#    Input Text  id:gh-ac   robot
#    Input Text  name:_nkw   robot
    Click Link  link:Sell
    Click Link  link: Start selling
    Click Link partial link:Seller Information Center
    Sleep   4s
    Close Browser
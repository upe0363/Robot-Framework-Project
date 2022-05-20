*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.sugarcrm.com/au/request-demo/
${browser}    chrome

*** Test Cases ***
TC To demonstrate working with Frames in Robot FW
    [Documentation]  TC to demonstrate working with frames in Robot FW

    Open Browser    https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert Chrome
    Maximize Browser Window

    Select Frame    id:iframeResult

    Current Frame Should Contain    JavaScript Confirm Box Two

    Unselect Frame

    Frame should contain    id:iframeResult JavaScript Alert

    Close Browser
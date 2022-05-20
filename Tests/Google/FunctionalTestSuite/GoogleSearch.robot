*** Settings ***
Library  SeleniumLibrary
Resource

*** variables ***

*** Test Cases ***
This Is sample test case
    [documentation]  Google test
    [tags]  regression

    Open Browser  http://www.google.com  chrome
    Close Browser

*** keywords ***

*** Settings ***
Library  SeleniumLibrary    timeout=10s

*** Variables ***

*** Test Cases ***
Test Case to Selenium Speed and Timeout in Robot Framework
    [Documentation]  Test Case to Selenium Speed and Timeout in robot Framework
    ${default_selenium_timeout}=    Get Selenium Timeout
    ${default_selenium_speed}=    Get Selenium Speed
    Set Selenium Speed  1s
    Set Selenium Timeout    8s

    Open Browser    https://www.sugarcrm.com/au/request-demo/   chrome
    Alert Should Be Present
    Maximize Browser Window

    Scroll Element Into view    xpath://*[@id="menu-item-115"]/a
    Mouse Down  xpath://*[@id="field25"]/div/input
    Sleep   2s
    Mouse Up    xpath://*[@id="field25"]/div/input
    Sleep   2s

    Scroll Element Into View    xpath://*[@id="menu-item-115"]/a

    Mouse Down On Link  xpath://*[@id="menu-item-107"]/a
    ${default_selenium_speed1}= Get Selenium Speed
    ${default_selenium_timeout}=    Get Selenium Timeout

    Close Browser
*** Settings ***
Library  SeleniumLibrary
Resource  ./HeaderPage.robot

*** Variables ***
${search_results} =  results for

*** Keywords ***
Verify Search Results
    [Arguments]  ${search_text}
 #   Page Should Contain  ${search_results}  @{search_text.abc}
    Page Should Contain  ${search_results}  ${search_text}
#    Page Should Contain  ${search_results}  robot

*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Verify Search Results
    Input Text   xpath://*[@id="gh-ac"]   mobile
    Press Keys   xpath://*[@id="gh-btn"]   RETURN

    Press Keys  name:this-in-name   RETURN
    Press Keys  css:#gh-btn   RETURN
    Page Should Contain  results for mobile

Filter results by condition
    Mouse Over  //*[@id="w7"]/button/div
    sleep 3s
    Mouse Down  //*[@id="w7"]/div/ul/li[2]
    Click Element   //*[@id="w7"]/div/ul/li[2]

Verify filter results
    Element Should Contain  //*[@id="srp-river-results-query_answer1-w0-x-carousel-items

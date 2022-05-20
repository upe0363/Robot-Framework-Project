*** Settings ***
Library  SeleniumLibrary
Variables   ../Webelements.py

*** Variables ***

#${search_text}  mobile
#${search_text}  robot  #Scaler variables
#List variable syntax: @{search_text}   books
#@{search_text}  books   travel  robot   gifts

#${SearchTextBox}    xpath://*[@id="gh-ac"]
#${SearchButton}     xpath://*[@id="gh-btn"]
#${AdvancedSearchLink}   //*[@id="gh-as-a"]

&{search_text}  abc=books   bcd=travel

*** Keywords ***
Input Search Text and Click Search
    [Argument]  ${search_text}
  #  Input Text    xpath://*[@id="gh-ac"]  ${search_text.abc}
    Input Text    ${HomePageSearchTextBox}  ${search_text}
    Press Keys    ${HomePageSearchButton}   RETURN



Click on Advanced Search Link
    Click Element   ${HomePageAdvancedSearchLink}

#Search for another text
 #   Input text  xpath://*[@id="gh-ac"]  ${search_text}

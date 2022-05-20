*** Settings ***


*** Test Cases ***
Arguements demo keyword test
    Arguements demo keyword  upendra singh

Arguements demo keyword2
    Arguements demo keyword  test   testing

*** Keywords ***
Arguements demo keyword
    [Arguments]   ${arg1}   ${arg2}
    Log  ${arg1}
    Log  ${arg2}
*** Settings ***

*** Variables ***

*** Test Cases ***
Test Case to demonstrate explixit wait in Robot Framework
    [Documentation]  Test Case to demonstrate sxplicit wait in Robot Framework

   Open Browser https://www.sugarcrm.com/au/request-demo/   chrome
   Maximize Browser Window

   Scroll Element Into View  xpath://*[@id="menu-item-115"]/a

   Wait Until Page Contains   With our customers
   Wait Until Page Contains Element  xpath://*[@id="menu-item-19419"]/a
   Wait Until Page Does Not Contain  With our customerss
   Wait Utill Page Does Not Contain Element  xpath://*[@id="menu-item-19419"]/abch

   Wait Untill Location Is  https://www.sugarcrm.com/au/request-demo/
   Wait Untill Location Is Not   https://www.sugarcrm.com/au/request-demo/abc
   Wait Untill Location Contains    au
   Wait Untill Location Does Not Contain    aud

   Wait Untill Element Contains    xpath://*[@id="menu-item-19419"]/a   Deployment Options  timeout=10s error=Found Text
   Wait Untill Element Does Not Contain  xpath://*[@id="menu-item-16789"]/a  random text
   Wait Untill Element Is Enabled   xpath://*[@id="mwnu-item-19419"]/a
   Wait Untill Element Is Not Visible   xpath://*[@id="menu-item-19419"]/a/b
   Wait Untill Element Is Visible   xpath://*[@id="menu-item-19419"]/a

   Close Browser

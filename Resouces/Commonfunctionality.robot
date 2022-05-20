*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.ebay.com
#${browser}  firefox
${browser}  chrome
#${env}  qa
#&{url}  qa=http://qa.demo.com   uat=http:uat.demo.com   dev=http://dev.demo.com

*** Keywords ***
Start TestCase
 #  Open Browser  ${url.${env}}   chrome
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Sleep   4s

Finish TestCase
    Close Browser
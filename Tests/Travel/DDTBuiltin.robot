*** Setting ***
Library  SeleniumLibrary
Resource  ../Resources/common.robot

Suite Setup    common.Start TestCase
Suite Teardown     common.Finish TestCase
Test Template     Invalid Login Scenarios

*** Test Cases ***                                     USERNAME             PASSWORD        ERROR MESSAGE
Verify Login Fails - Blank Username and Password       ${EMPTY}             ${EMPTY}        Epic SadFace: Username is required.
Verify Login Fails - Wrong Username                    standard_us          secret_sauce    Epic Sadface: Username and password do not match any userin this service.
Verify Login Fails - LockedOut User                    locked_out_user      secret_sauce    Epic SadFace: Sorry, this userhan been locked out.
Verify Login Fails - Wrong Password                    standard_user        secret_sa       Epic Sadface: Username and password do not match any user in this service.
Verify Login Fails - Wrong Username and Password       standard_us          secret_sa       Epic SadFace: Username and password do not match any user in this service.
Verify Login Fails - Blank Username and Password       ${EMPTY}             secret_sauce    Epic SadFace: Username is required.

*** Keywords ***
Invalid Login Scenarios
    [Arguments]  ${username}   ${password}  ${error_msg}
    Input Text   ${txtbox_username}   ${username}
    Input Text   ${txtbox_password}   ${password}
    Click Button    ${btn_login}
    Sleep   2s
    Element Should Contain  ${txt_error}   ${error_msg}


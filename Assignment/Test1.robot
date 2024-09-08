*** Settings ***
Documentation    Login and validate Title name
Library    SeleniumLibrary
Library    Collections
Test Setup    open the browser with the url
Test Teardown    Close Browser Session
Resource    resource.robot

*** Variables ***



*** Test Cases ***
Login
    Fill the login form    ${user_name}    ${valid_password}
    Click on the Log In button

Verify Title
    Fill the login form    ${user_name}    ${valid_password}
    Click on the Log In button
    Validate the title of the page


*** Keywords ***
Fill the login form
    [arguments]    ${username}    ${password}
    Input Text    name:username    ${username}
    Input Password    name:password    ${password}

Click on the Log In button
    Click Button    xpath://input[@type='submit']

Validate the title of the page
#    ${EXPECTED_TITLE}    ParaBank | Accounts Overview
    ${actual_title}    Get Title
    log    ${actual_title}
    Should Be Equal As Strings    ${actual_title}    ParaBank | Accounts Overview
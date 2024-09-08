*** Settings ***
Documentation    A resource file with a reusable keywords and variables.
Library    SeleniumLibrary

*** Variables ***
${user_name}            john
${valid_password}    demo
${url}                https://parabank.parasoft.com/parabank/index.htm?ConnType=JDBC
${browser}    Chrome
${IMPLICIT_WAIT}    5s


*** Keywords ***
open the browser with the url
    Create Webdriver    ${browser}
    Go To    ${url}
    Set Selenium Implicit Wait    ${IMPLICIT_WAIT}
    Maximize Browser Window


Close Browser Session
    Close Browser
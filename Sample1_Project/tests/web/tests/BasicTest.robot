#To execute on Terminal: python3 -m robot Sample1_Project/tests/web/tests/BasicTest.robot

*** Settings ***
Documentation     A basic example test suite for login functionality.
Library           SeleniumLibrary

*** Variables ***
${LOGIN_URL}      https://www.saucedemo.com
${BROWSER}        chrome
${VALID_USER}     standard_user
${VALID_PASS}     secret_sauce

*** Test Cases ***
Valid Login Test Scenario
    Given the user navigates to the login page
    When the user enters valid credentials
    Then the welcome message should be displayed

*** Keywords ***
the user navigates to the login page
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    Swag Labs

the user enters valid credentials
    Input Text        id:user-name    ${VALID_USER}
    Input Password    id:password    ${VALID_PASS}
    Click Button      css:input[type="submit"]

the welcome message should be displayed
    Page Should Contain    Swag Labs
    [Teardown]    Close Browser
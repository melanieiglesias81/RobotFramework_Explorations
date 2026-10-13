#To execute on Terminal: python3 -m robot Sample1_Project/tests/web/tests/BasicTest.robot

*** Settings ***
Documentation     A basic example test suite for login functionality.
Library           SeleniumLibrary

*** Variables ***
${LOGIN_URL}      https://www.saucedemo.com
${BROWSER}        chrome
${VALID_USER}     standard_user
${VALID_PASS}     secret_sauce

${INVALID_USER}     standard_user_incorrect
${INVALID_PASS}     secret_sauce_incorrect

*** Test Cases ***
Valid Login Test Scenario
    Given the user navigates to the login page
    When the user enters valid credentials
    Then the welcome message should be displayed

Invalid Username and Password
    Given the user navigates to the login page
    When the user enters invalid credentials
    Then the welcome message should be displayed

Invalid username and valid password
    Given the user navigates to the login page
    When the user enters invalid username and valid password
    Then the welcome message should be displayed

Valid username and invalid password
    Given the user navigates to the login page
    When the user enters valid username and invalid password
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

the user enters invalid username and valid password
    Input Text        id:user-name    ${INVALID_USER}
    Input Password    id:password    ${VALID_PASS}
    Click Button      css:input[type="submit"]

the user enters valid username and invalid password
    Input Text        id:user-name    ${VALID_USER}
    Input Password    id:password    ${INVALID_PASS}
    Click Button      css:input[type="submit"]


the user enters invalid credentials
    Input Text        id:user-name    ${INVALID_USER}
    Input Password    id:password    ${INVALID_PASS}
    Click Button      css:input[type="submit"]

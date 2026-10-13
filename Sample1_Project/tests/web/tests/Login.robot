#To execute on Terminal: python3 -m robot Sample1_Project/tests/web/tests/Login.robot

*** Settings ***
Resource   ../resources/Common.robot
Resource   ../resources/keywords/LoginKeywords.robot
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


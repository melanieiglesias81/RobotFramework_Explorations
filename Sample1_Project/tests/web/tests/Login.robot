#To execute on Terminal: python3 -m robot Sample1_Project/tests/web/tests/Login.robot

*** Settings ***

Library    SeleniumLibrary

Resource   ../resources/Common.robot
Resource    ../config/Browser.robot
Resource    ../config/URL.robot
Resource   ../resources/keywords/LoginKeywords.robot


*** Test Cases ***
Valid Login Test Scenario
    Given the user navigates to the login page
    When the user enters valid credentials
    Then the welcome message should be displayed


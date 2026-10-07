*** Settings ***
Resource   ../resources/Common.robot
Resource   ../resources/keywords/AccessURLLinkKeywords.robot

#Test Setup   Run Keywords    Open Application
#Test Teardown  Run Keywords  Close Application
Force Tags  WEB   AccessURL

*** Test Cases ***
As a user , I want to access the folllowing URL Link
    [Tags]   Smoke
     Log To Console    Buhay na ang Common.robot file!
#    Given   User Access the Google Chrome URL
#    And
#    When
#    Then


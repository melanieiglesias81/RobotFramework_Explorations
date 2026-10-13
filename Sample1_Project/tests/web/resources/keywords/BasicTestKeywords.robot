*** Settings ***

Library    SeleniumLibrary
Resource    ../../config/Browser.robot
Resource    ../../config/URL.robot
Variables    ../resources-mapping/AccessURLLinkResourceMapping.py

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
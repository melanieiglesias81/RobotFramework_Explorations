*** Settings ***
Library    String
Library    Collections
Library    SeleniumLibrary
Resource    ../../config/Browser.robot
Resource    ../../resources/Common.robot
Resource    ../../config/URL.robot
Variables   ../resource-mapping/LoginResourceMapping.py
Variables    ../../input/static-inputs/LoginStaticInput.py

*** Keywords ***
the user navigates to the login page
    Browser is opened to the login page
#    Open Browser    ${LOGIN_URL}    ${BROWSER}
#    Maximize Browser Window
    Title Should Be    Swag Labs

the user enters valid credentials
    Input Text        ${PAGE_LOGIN['LOGIN_PAGE']['TEXTFIELD_USERNAME']}    ${LOGIN_EMAIL['VALID']}
    Input Password    id:password    ${LOGIN_PASSWORD['VALID']}
    Click Button      css:input[type="submit"]

the welcome message should be displayed
    Page Should Contain    Swag Labs
    [Teardown]    Close Browser

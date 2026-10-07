*** Settings ***
Library SeleniumLibrary
Library BuiltIn
Resource ./URL.robot

*** Variables ***
${BROWSER} =   HeadlessChrome1

*** Keywords ***
Open Chrome Browser to Page
   open browser   about:blank   chrome
   maximize browser window
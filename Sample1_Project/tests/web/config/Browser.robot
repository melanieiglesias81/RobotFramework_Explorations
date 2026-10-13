*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Resource  ./URL.robot

*** Variables ***
#${BROWSER} =   HeadlessChrome1
${BROWSER}         chrome

*** Keywords ***
Open Chrome Browser to Page
   open browser   about:blank   ${BROWSER}
   maximize browser window
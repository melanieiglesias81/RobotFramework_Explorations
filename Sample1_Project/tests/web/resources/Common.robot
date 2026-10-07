*** Settings ***
Resource   ../config/Browser.robot
Resource   ../keywords/AccessURLLinkKeywords.robot
Library    BuiltIn
Library    SeleniumLibrary


*** Variables ***
${TIMEOUT}  =  2min

*** Keywords ***
Open Application
  Run Keyword If   '${BROWSER}' == 'HeadlessChrome' or  '${BROWSER}' == 'headlesschrome'    Open Headless chrome Browser
  ...   ELSE  Open Chrome Browser to Page

Close Application
   close all browsers

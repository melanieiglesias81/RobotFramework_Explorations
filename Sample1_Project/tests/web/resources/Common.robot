*** Settings ***
Resource   ../config/Browser.robot
Resource   ./keywords/LoginKeywords.robot
Resource   ./keywords/BrowserKeywords.robot
Library    BuiltIn
Library    SeleniumLibrary



*** Variables ***
${TIMEOUT}  =  2min

*** Keywords ***
#Open Application
#  Run Keyword If   '${BROWSER}' == 'HeadlessChrome' or  '${BROWSER}' == 'headlesschrome'    Open Headless chrome Browser
#  ...   ELSE  Open Chrome Browser to Page

Browser is opened to the login page
    ## Used for executing pipeline run on CI/CD
    Open Headless Chrome Browser to Page  ${url}

    ## Used for executing headless brwser run on Local
#    Open Browser  ${url}  headlesschrome
#    Set Window Size  1000  900

#    ## Used for executing to display browser run on Local
#    Open Browser  ${url}  chrome
#    Maximize  Browser Window

    Set Selenium Speed  0.5



Close Application
   close all browsers


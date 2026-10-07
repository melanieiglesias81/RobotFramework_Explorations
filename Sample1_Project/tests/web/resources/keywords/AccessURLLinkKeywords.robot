*** Settings ***
Library    String
Library    Collections
Library    SeleniumLibrary
Resource    ../../config/Browser.robot
Resource    ../../config/URL.robot
Variables    ../resources-mapping/AccessURLLinkResourceMapping.py

*** Keywords ***
User Access the Google Chrome URL
    Go To   ${GOGGLE_URL}

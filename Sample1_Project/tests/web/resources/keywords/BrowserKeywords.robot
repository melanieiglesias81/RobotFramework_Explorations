*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Headless Chrome Browser to Page
    [Arguments]    ${url}
    Wait Until Keyword Succeeds   5 times     0s      Open Browser Headless   ${url}



 Open Browser Headless


    [Arguments]    ${url}
    ${options}=    Evaluate    selenium.webdriver.ChromeOptions()    modules=selenium.webdriver
    ${profile}=    Evaluate    tempfile.mkdtemp()    modules=tempfile
    Evaluate    $options.add_argument("--headless=new")
    Evaluate    $options.add_argument("--no-sandbox")
    Evaluate    $options.add_argument("--disable-dev-shm-usage")
    Evaluate    $options.add_argument("--disable-gpu")
    Evaluate    $options.add_argument("--window-size=1920,1080")
    Evaluate    $options.add_argument("--user-data-dir=" + $profile)
    ${clean}=    Strip String    ${url}
    Open Browser    ${clean}    chrome    options=${options}







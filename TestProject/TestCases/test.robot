*** Keywords ***
Launching The Browser
    [Documentation]    This keyword is used to launch the browser.
    ${driver_path}=    driver.Get Chromedriver Path
    Create Webdriver    ${Browser}    executable_path=${driver_path}
    Go To    ${url}
    Run Keyword And Ignore Error    Maximize Browser Window

Opening The Browser With Cloud UI Login Page
    [Documentation]    This keyword is used to open the browser with cloud ui url.
    [Arguments]    ${url}    ${Browser}
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window
    
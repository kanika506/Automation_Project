#User keywords with arguments
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}       https://www.facebook.com


*** Test Cases ***
UserKeywordsTest
    LaunchBrowser       ${url}          ${browser}

    input text          id:email        kanika.gupta2080@gmail.com
    input text          id:pass         Admin123

    sleep   1

    close browser

*** Keywords ***
LaunchBrowser
    [Arguments]         ${app_url}      ${app_browser}
    open browser        ${app_url}      ${app_browser}
    maximize browser window
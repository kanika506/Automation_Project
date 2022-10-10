#User keywords without arguments
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}       https://www.facebook.com


*** Test Cases ***
UserKeywordsTest
    LaunchBrowser

    input text          id:email        kanika.gupta2080@gmail.com
    input text          id:pass         Admin123

    sleep   1

    close browser

*** Keywords ***
LaunchBrowser
    open browser        ${url}      ${browser}
    maximize browser window
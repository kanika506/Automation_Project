*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}       https://www.google.com
${url1}      https://www.yahoo.com


*** Test Cases ***
TabbedWindowTest
    open browser        ${url}      ${browser}
    maximize browser window
    ${loc}=     get location
    log to console      ${loc}
    sleep   1

    go to        ${url1}
    ${loc1}=     get location
    log to console      ${loc1}
    sleep   1

    go back
    ${loc2}=     get location
    log to console      ${loc2}
    sleep   1

    close browser


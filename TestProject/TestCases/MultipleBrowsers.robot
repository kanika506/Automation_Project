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

    open browser        ${url1}      ${browser}
    maximize browser window

    switch browser      1
    ${title}=     getTitle
    log to console      ${title}

    switch browser      2
    ${title1}=     getTitle
    log to console      ${title1}

    close all browsers

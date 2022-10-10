*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}       https://demo.automationtesting.in/Windows.html


*** Test Cases ***
TabbedWindowTest
    open browser        ${url}      ${browser}
    maximize browser window
    click element       xpath://*[@id="Tabbed"]/a/button
    switch window       title=Selenium
    click element       xpath://*[@id="main_navbar"]/ul/li[4]/a/span
    sleep       2
    close all browsers
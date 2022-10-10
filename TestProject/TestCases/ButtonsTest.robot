*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://www.techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
Input Test for RadioButtons and Checkboxes
    open browser        ${url}      ${browser}
    maximize browser window
    set selenium speed      2seconds

    select radio button     sex   Male
    select radio button     sex   Female
    select radio button     exp   5

    select checkbox         Manual Tester
    select checkbox         QTP

    unselect checkbox       QTP

    close browser

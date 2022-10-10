*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://www.techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
Input Test for DropDowns and Listboxes
    open browser        ${url}      ${browser}
    maximize browser window
    set selenium speed      1seconds

    select from list by label       continents      South America
    select from list by index       continents      3

    select from list by label       selenium_commands     Wait Commands
    sleep  2
    select from list by label       selenium_commands     Browser Commands
    sleep  2
    unselect from list by label     selenium_commands     Browser Commands
    unselect
    close Browser

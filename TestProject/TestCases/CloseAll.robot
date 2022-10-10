*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}       https://demo.nopcommerce.com/
${url1}      https://demowebshop.tricentis.com/register

*** Test Cases ***
MyTestCase
    open browser        ${url}      ${browser}
    maximize browser window

    open browser        ${url1}      ${browser}
    maximize browser window

    Log To Console    Updation
`
    #It closes the latest browser only
    #close browser

    #It closes all the opened browsers in a sequential manner
    close all browsers
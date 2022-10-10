*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}       https://testautomationpractice.blogspot.com/


*** Test Cases ***
MyTestCase
    open browser        ${url}      ${browser}
    maximize browser window

    click element       xpath://*[@id="HTML9"]/div[1]/button

    #handle alert        accept
    #handle alert        dismiss
    #handle alert         leave
    #alert should be present        Press a button!
    alert should not be present        Press a button!
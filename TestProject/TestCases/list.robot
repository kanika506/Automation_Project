*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}              chrome
${url}                  https://rahulshettyacademy.com/loginpagePractise/
${user_name}            rahulshettyacademy
${password}             learning

*** Test Cases ***
Verify Card Display In the Shop Page
    open browser with the mortgage payment url
    Fill The Login Form        ${user_name}        ${password}
    Set Selenium Implicit Wait    20 seconds
    Wait Until Element Is Visible       css:.nav-link
    Verify Card Titles In The Shop Page
    close browser session

*** Keywords ***
open browser with the mortgage payment url
    open browser      ${url}        ${browser}
    maximize browser window

Fill The Login Form
    [arguments]                 ${user_name}    ${password}
    input text                  id:username     ${user_name}
    input text                  id:password     ${password}
    click button                signInBtn

Verify Card Titles In The Shop Page
    @{expectedList} =  Create List     iphone X    Samsung Note 8      Nokia Edge      Blackberry
    @{elements} =     Get WebElements   css:.card-title
    @{actualList} =   Create List

    For  ${element}  In  @{elements}
        Log  ${element.text}
        Append To list  ${actualList}   ${element.text}
    End

    Lists Should Be Equal   ${expectedList}     ${actualList}

close browser session
    close browser
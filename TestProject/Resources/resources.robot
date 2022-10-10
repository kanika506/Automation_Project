*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}              chrome
${url}                  https://rahulshettyacademy.com/loginpagePractise/
${user_name}            rahulshettyacademy
${invalid_password}     21345
#${valid_password}       learning

*** Keywords ***
LaunchBrowser
    [Arguments]         ${app_url}      ${app_browser}
    open browser        ${app_url}      ${app_browser}
    maximize browser window

open browser with the mortgage payment url
    open browser      ${url}        ${browser}
    maximize browser window

close browser session
    close browser


*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}       https://www.facebook.com



*** Test Cases ***
CaptureTest
    open browser        ${url}      ${browser}
    maximize browser window
    input text          id:email        kanika.gupta2080@gmail.com
    input text          id:pass         Admin123
    sleep  1

    capture element screenshot      xpath://*[@id="content"]/div/div/div/div[1]/div/img      logo.png
    capture page screenshot         PageScreen.png
    close browser
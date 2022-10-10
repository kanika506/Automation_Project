*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://demowebshop.tricentis.com/register

*** Test Cases ***
SpeedTest
    open browser    ${url}      ${browser}
    maximize browser window

    ${speed}=       get selenium timeout
    log to console      ${speed}

    set selenium timeout    10seconds

    wait until page contains        Register

    select radio button     Gender      F
    input text          id:FirstName        Kanika
    input text          id:LastName         Gupta
    input text          id:Email            kanika.gupta@gmail.com
    input text          id:Password         WER#$%^
    input text          id:ConfirmPassword      WER#$%^

    ${speed}=       get selenium timeout
    log to console      ${speed}

    close browser

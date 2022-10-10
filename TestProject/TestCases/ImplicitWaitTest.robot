*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://demowebshop.tricentis.com/register

*** Test Cases ***
SpeedTest
    open browser    ${url}      ${browser}
    maximize browser window

    ${implicit_wait}=   get selenium implicit wait
    log to console      ${implicit_wait}

    set selenium implicit wait    10 seconds

    ${implicit_wait}=       get selenium implicit wait
    log to console      ${implicit_wait}

    select radio button     Gender      F
    input text          id:FirstName1        Kanika
    input text          id:LastName         Gupta
    input text          id:Email            kanika.gupta@gmail.com
    input text          id:Password         WER#$%^
    input text          id:ConfirmPassword      WER#$%^



    close browser

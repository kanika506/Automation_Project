*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}       https://demo.nopcommerce.com/

*** Test Cases ***
Login Testrobot
    open browser              ${url}     ${browser}
    LogIntoApplication
    close browser

*** Keywords ***
LogIntoApplication
    click link                xpath://a[@class="ico-login"]
    input text                id:Email      kanika.gupta@gmail.com
    input text                id:Password   kanika@145465
    click element             xpath://button[text() = 'Log in']


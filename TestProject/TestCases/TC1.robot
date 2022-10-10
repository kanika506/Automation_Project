*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}       https://demo.nopcommerce.com/

*** Test Cases ***
Login Test
#1.
#create webdriver chrome   executable_path="C:\Users\Admin\Downloads\chromedriver_win32\chromedriver.exe"

#2.if the path of chromedriver is in the scripts folder of python
#   open browser              https://demo.nopcommerce.com/  chrome

#3. if we put the values in the variable
    open browser              ${url}     ${browser}
    click link                xpath://a[@class="ico-login"]
    input text                id:Email      kanika.gupta@gmail.com
    input text                id:Password   kanika@145465
    click element             xpath://button[text() = 'Log in']
    close browser

*** Keywords ***
LogIntoApplication
    click link                xpath://a[@class="ico-login"]
    input text                id:Email      kanika.gupta@gmail.com
    input text                id:Password   kanika@145465
    click element             xpath://button[text() = 'Log in']


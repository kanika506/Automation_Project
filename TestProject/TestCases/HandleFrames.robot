*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}       https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html


*** Test Cases ***
MyTestCase
    open browser        ${url}      ${browser}
    maximize browser window

    #select frame        packageListFrame
    #click link          xpath://a[text()='org.openqa.selenium.devtools']
    #unselect frame
     #sleep   1

    select frame        packageFrame
    click link          xpath://a[text()='WebDriver']
    unselect frame
    sleep   1

    select frame        classFrame
    click link          xpath://a[text()='Index']
    unselect frame
    sleep   1

    close browser


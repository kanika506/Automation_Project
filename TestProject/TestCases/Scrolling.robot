*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}       https://www.countries-ofthe-world.com/all-countries.html

*** Test Cases ***
ScrollingTest
    open browser        ${url}  ${browser}
    maximize browser window
    #scrolling till a pixel number
    #execute javascript  window.scrollTo(0,1500)
    sleep   1
    #scrolling till an element
    #scroll element into view        xpath://*[@id="content"]/div[2]/div[2]/ul[2]/li[38]
    #sleep   2
    #scrolling till the end page
    execute javascript      window.scrollTo(0,document.body.scrollHeight)
    sleep  2
    #scrolling till the end of the page and then back to the start
    execute javascript      window.scrollTo(0,-document.body.scrollHeight)
    sleep   2
    close browser

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}       https://swisnl.github.io/jQuery-contextMenu/demo.html
${url1}      https://testautomationpractice.blogspot.com/
${url2}      http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html


*** Test Cases ***
CaptureTest
    open browser        ${url}      ${browser}
    maximize browser window
    #Right-click action
    open context menu       xpath://span[@class='context-menu-one btn btn-neutral']
    sleep  1

    go to        ${url1}
    maximize browser window
    #Double-click action
    double click element        xpath://*[@id="HTML10"]/div[1]/button
    sleep  1

    go to        ${url2}
    maximize browser window
    #Drag and Drop action   #source element     #target element
    drag and drop        id:box6        id:box106
    sleep  1

    close browser

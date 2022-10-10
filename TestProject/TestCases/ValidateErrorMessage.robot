*** Settings ***
Documentation       To validate the login form
Library             SeleniumLibrary
Resource            resources.robot
Test Setup          open browser with the mortgage payment url
Test Teardown       close browser session
Documentation       To validate the login form
Library             SeleniumLibrary
Resource            ../Resources/resources.robot
Test Setup          open browser with the mortgage payment url
Test Teardown       close browser session


*** Variables ***
${Error_Message_Login}      css:.alert-danger

*** Test Cases ***
Validate Unsuccessful Login
    fill the login form        ${user_name}         ${valid_password}
    wait until it checks and display error message
    verify error message is correct

*** Keywords ***
fill the login form
    [arguments]                 ${user_name}    ${password}
    input text                  id:username     ${user_name}
    input text                  id:password     ${password}
    click button                signInBtn

wait until it checks and display error message
    set selenium timeout    20 seconds
    wait until element is visible       ${Error_Message_Login}

verify error message is correct
    #${result}=  get text         ${Error_Message_Login}
    #should be equal as strings   ${result}      Incorrect username/password.
    Element text should be          ${Error_Message_Login}      Incorrect username/password.







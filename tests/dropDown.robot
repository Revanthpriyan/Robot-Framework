*** Settings ***
Documentation    To select a item from dropdown
Library   SeleniumLibrary
Test Setup        open the browser and with swaglabs url
#Test Teardown    Close Browser Session
Resource         ../Po/generic.robot

*** Test Cases ***
Select a item from options

         Fill the username and password     ${usernameVal}   ${passwordVal}
         verify the options to search items    lohi

*** Keywords ***

Fill the username and password
    [Arguments]      ${usernameVal}     ${passwordVal}
    Input Text        ${username}       ${usernameVal}
    Input Password    ${password}       ${passwordVal}
    Click Button      ${loginButton}



verify the options to search items
    [Arguments]    ${value}
    Wait Until Element Is Visible   ${list}  
    Select From List By Value       ${list}    ${value}
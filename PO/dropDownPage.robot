*** Settings ***
Documentation   All the page object and keywords of alert.robot

Library    SeleniumLibrary
Library    OperatingSystem
Resource    generic.robot

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
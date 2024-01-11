*** Settings ***
Documentation    To validate login
Library          SeleniumLibrary
Test Template    validate login
#Resource
*** Variables ***
${usernameLocator}       css:[name="user-name"]
${passwordLocator}       css:[name="password"]
${loginButton}    id:login-button
${container}      id:shopping_cart_container


*** Test Cases ***         username          password
valid                      standard_user     secret_sauce
invalid username           rev               standard_user
invalid password           standard_user     rev


*** Keywords ***
validate login
    [Arguments]    ${username}    ${password}
    open the browser and with swaglabs url
    Fill the username and password  ${username}    ${password}
    wait for login
    verify login
open the browser and with swaglabs url
    Create Webdriver  Chrome     C:/Users/Lenovo/Downloads/chromedriver_win32
    Go To    https://www.saucedemo.com/v1/


Fill the username and password
    [Arguments]    ${username}    ${password}
    Input Text        ${usernameLocator}       ${username}
    Input Password    ${passwordLocator}       ${password}
    Click Button      ${loginButton}

wait for login
    Wait Until Element Is Visible    ${container}
        
verify login
    ${result} =  Get Text    (//button[@class="btn_primary btn_inventory"])[1]
    Should Be Equal As Strings    ${result}    ADD TO CART




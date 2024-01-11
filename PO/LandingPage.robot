*** Settings ***
Documentation   All the page object and keywords of landing page

Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${username}       css:[name="user-name"]
${password}       css:[name="password"]
${loginButton}    id:login-button
${container}      id:shopping_cart_container
${usernameVal}    standard_user
${passwordVal}       secret_sauce
${AddToContainer}    (//button[@class="btn_primary btn_inventory"])[1]


*** Keywords ***

open the browser and with swaglabs url
    Create Webdriver  Chrome     C:/Users/Lenovo/Downloads/chromedriver_win32
    Go To    https://www.saucedemo.com/v1/

Fill the username and password

    Input Text        ${username}       ${usernameVal}
    Input Password    ${password}       ${passwordVal}
    Click Button      ${loginButton}

wait for login
    Wait Until Element Is Visible    ${container}

verify login
    ${result} =  Get Text    ${AddToContainer}
    Should Be Equal As Strings    ${result}    ADD TO CART
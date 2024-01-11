*** Settings ***
Documentation   A resource file with reusable keywords and variables.

Library    SeleniumLibrary
Library    OperatingSystem


*** Variables ***
${username}       css:[name="user-name"]
${password}       css:[name="password"]
${loginButton}    id:login-button
${container}      css:[id="shopping_cart_container"]
${usernameVal}    standard_user
${passwordVal}       secret_sauce
${list}              css:[class="product_sort_container"]
${AddToContainer}    (//button[@class="btn_primary btn_inventory"])[1]

${alertBox}    (//span[@class="ui-button-text ui-c"])[2]
${okButton}    button[text()='User Clicked : OK']

${windowButton}    css:[id="j_idt88:new"]
${newWindow}    id:menu-button


*** Keywords ***
open the browser and with swaglabs url
    Create Webdriver  Chrome     C:/Users/Lenovo/Downloads/chromedriver_win32
    Go To    https://www.saucedemo.com/v1/

open the browser and with url
    [Arguments]    ${browsername}           ${driverLink}
    Create Webdriver  ${browsername}        ${driverLink}
    Go To    https://www.saucedemo.com/v1/

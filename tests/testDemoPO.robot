*** Settings ***
Documentation    To validate Login
Library          Collections
Test Setup       open the browser and with swaglabs url
Resource         ../PO/testDemoPoPage.robot

*** Test Cases ***
validate successful login
    [Tags]    LOGIN
    Fill the username and password
    wait for login
    verify login

Add a Item To the Cart
    [Tags]     PURCHASE
   Fill the username and password
   wait for login
   verify login
   Click the add to cart button
   Check the cart added or not and click the cart button
   Click the checkout button
   Fill the details
   Click the continue button and finish button
   Validate the purchase






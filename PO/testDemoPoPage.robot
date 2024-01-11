*** Settings ***
Documentation   All the page object and keywords of testDemoPo

Library    SeleniumLibrary
Library    OperatingSystem
Library    ../CustomLibrary/Shop.py

*** Variables ***
${usernameLoc}           css:[name="user-name"]
${passwordLoc}           css:[name="password"]
${loginButton}           id:login-button
${container}             id:shopping_cart_container
${usernameVal}           standard_user
${passwordVal}           secret_sauce
${AddToContainer}        (//button[@class="btn_primary btn_inventory"])[1]
${containerVerify}       css:#shopping_cart_container > a > span
${addToCartButton}       xpath:(//button[@class="btn_primary btn_inventory"])[1]
${checkoutButton}        css:[class="btn_action checkout_button"]
${firstName}              first-name
${lastName}               last-name
${zipCode}               postal-code
${continueButton}         css:[class="btn_primary cart_button"]
${finishButton}           xpath://a[text()='FINISH']
${finalText}              css:[class="complete-header"]




*** Keywords ***
open the browser and with swaglabs url
    Create Webdriver  Chrome     C:/Users/Lenovo/Downloads/chromedriver_win32
    Go To    https://www.saucedemo.com/v1/


Fill the username and password

    Input Text        ${usernameLoc}       ${usernameVal}
    Input Password    ${passwordLoc}       ${passwordVal}
    Click Button      ${loginButton}

wait for login
    Wait Until Element Is Visible    ${container}

verify login
    ${result} =  Get Text    ${AddToContainer}
    Should Be Equal As Strings    ${result}    ADD TO CART
    
Click the add to cart button
    Click Button    ${addToCartButton}

 
Check the cart added or not and click the cart button
     Wait Until Element Is Visible     ${containerVerify}   
     Element Should Be Visible         ${containerVerify}
     Click Element                     ${container}
     

   
Click the checkout button
    Wait Until Element Is Visible        ${checkoutButton}
    Click Element                        ${checkoutButton}
Fill the details
    Wait Until Element Is Visible    ${firstName}
    Input Text    ${firstName}    Rev
    Input Text    ${lastName}    Revanth
    Input Text    ${zipCode}     641402
Click the continue button and finish button
    Click Button                     ${continueButton}
    Wait Until Element Is Visible    ${finishButton}
    Scroll Element Into View         ${finishButton}
    Click Element                         ${finishButton}
Validate the purchase
    ${text}=    Get Text    ${finalText}
    Should Be Equal As Strings    ${text}    THANK YOU FOR YOUR ORDER
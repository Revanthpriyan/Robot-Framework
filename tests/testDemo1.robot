*** Settings ***
Documentation    To validate login
Library   SeleniumLibrary
Test Setup        Open The Browser And With Url       Chrome         C:\Users\Lenovo\PycharmProjects\RobotFramework\pythonProject\tests\resource\chromedriver.exe
#Test Teardown    Close Browser Session
Resource    ../Po/generic.robot


#Resource


*** Test Cases ***
validate successful login
    open the browser and with swaglabs url
    Fill the username and password     ${usernameVal}   ${passwordVal}
    wait for login
    verify login




*** Keywords ***

Fill the username and password
    [Arguments]      ${usernameVal}     ${passwordVal}
    Input Text        ${username}       ${usernameVal}
    Input Password    ${password}       ${passwordVal}
    Click Button      ${loginButton}

wait for login
    Wait Until Element Is Visible    ${container}
        
verify login
    ${result} =  Get Text    ${AddToContainer}
    Should Be Equal As Strings    ${result}    ADD TO CART


          
          
          






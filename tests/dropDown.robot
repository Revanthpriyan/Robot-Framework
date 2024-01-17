*** Settings ***
Documentation    To select a item from dropdown
Library   SeleniumLibrary
Test Setup        open the browser and with swaglabs url
#Test Teardown    Close Browser Session
Resource         ../Po/dropDownPage.robot

*** Test Cases ***
Select a item from options

         Fill the username and password     ${usernameVal}   ${passwordVal}
         verify the options to search items    lohi


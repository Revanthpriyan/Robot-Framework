*** Settings ***
Documentation    To Handle child window
Library   SeleniumLibrary
#Test Teardown    Close Browser Session
Resource    ../Po/generic.robot

*** Test Cases ***
Open the browser and handle the child window
    Open the browser and leafground url
    Handle the child window

*** Keywords ***
Open the browser and leafground url
    Create Webdriver  Chrome     C:/Users/Lenovo/Downloads/chromedriver_win32
    Go To    https://www.leafground.com/window.xhtml

Handle the child window
    Click Button    ${windowButton}
    Switch Window    NEW

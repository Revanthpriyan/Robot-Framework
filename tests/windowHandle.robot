*** Settings ***
Documentation    To Handle child window
Library   SeleniumLibrary
#Test Teardown    Close Browser Session
Resource    ../Po/windowHandlePage.robot

*** Test Cases ***
Open the browser and handle the child window
    Open the browser and leafground url
    Handle the child window


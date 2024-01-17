*** Settings ***
Documentation   All the page object and keywords of alert.robot

Library    SeleniumLibrary
Library    OperatingSystem
Resource    generic.robot


*** Keywords ***
Open the browser and leafground url
    Create Webdriver  Chrome     C:/Users/Lenovo/Downloads/chromedriver_win32
    Go To    https://www.leafground.com/window.xhtml

Handle the child window
    Click Button    ${windowButton}
    Switch Window    NEW
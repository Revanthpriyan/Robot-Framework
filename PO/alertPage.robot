*** Settings ***
Documentation   All the page object and keywords of alert.robot

Library    SeleniumLibrary
Library    OperatingSystem
Resource    generic.robot
*** Variables ***
${alertBox}    (//span[@class="ui-button-text ui-c"])[2]
${okButton}    button[text()='User Clicked : OK']

*** Keywords ***
Open the browser with leafground url
        Create Webdriver  Chrome     C:/Users/Lenovo/Downloads/chromedriver_win32
        Go To    https://www.leafground.com/alert.xhtml;jsessionid=node0qjq6vbsjg45g1647tv77jh7hf53985.node0AC

Open the alert box and click Ok
    Wait Until Element Is Visible     ${alertBox}
    Click Element    ${alertBox}
    Handle Alert
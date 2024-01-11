*** Settings ***
Documentation    To Handle alert
Library   SeleniumLibrary
#Test Teardown    Close Browser Session
Resource    ../Po/generic.robot



*** Test Cases ***
Open the browser and handle alert
    Open the browser with leafground url
    Open the alert box and click Ok

*** Keywords ***
Open the browser with leafground url
        Create Webdriver  Chrome     C:/Users/Lenovo/Downloads/chromedriver_win32
        Go To    https://www.leafground.com/alert.xhtml;jsessionid=node0qjq6vbsjg45g1647tv77jh7hf53985.node0AC

Open the alert box and click Ok
    Wait Until Element Is Visible     ${alertBox}
    Click Element    ${alertBox}
    Handle Alert
#    Alert Should Be Present    Did you call me?


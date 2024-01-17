*** Settings ***
Documentation    To Handle alert
Library   SeleniumLibrary
#Test Teardown    Close Browser Session

Resource     ../PO/alertPage.robot




*** Test Cases ***
Open the browser and handle alert
    Open the browser with leafground url
    Open the alert box and click Ok


#    Alert Should Be Present    Did you call me?


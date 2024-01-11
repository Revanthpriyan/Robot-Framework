*** Settings ***
Documentation    To validate login
Library   SeleniumLibrary
Library    ../CustomLibrary/Shop.py
Resource    ../PO/LandingPage.robot
#Resource



*** Test Cases ***
validate successful login
    LandingPage.open the browser and with swaglabs url
    LandingPage.Fill the username and password
    LandingPage.wait for login
    LandingPage.verify login
    Hello World







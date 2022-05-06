*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
     Append To Environment Variable    Path     C:\\Users\\Naman Thakur\\PycharmProjects\\robot_project\\driver
     Open Browser   url=https://www.medibuddy.in/     browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Click Element    id=wzrk-cancel
     Click Element    link=For Employer
     Switch Window      MediBuddy LaunchPad
     Input Text    id=getInTouchName    Naman
     Input Text    id=getInTouchEmail    naman1@gmail.com
     Input Text    id=getInTouchMobile    90188
     Input Text    id=getInTouchDesignation    Trainee
     Input Text    id=getInTouchEmpCount    40
     Click Element    xpath=//button[contains(@class,'btn-primary')]
     Element Text Should Be    xpath=//div[contains(@class,'text-red-600')]      Mobile Number should be 10 digits
     Close Window
     Close Browser

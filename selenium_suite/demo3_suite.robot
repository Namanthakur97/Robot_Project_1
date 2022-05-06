*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
     Append To Environment Variable    Path     C:\\Users\\Naman Thakur\\PycharmProjects\\robot_project\\driver
     Open Browser   url=https://www.goto.com/meeting/     browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Click Element    id=truste-consent-button
     Click Element    link=Try Free
     Input Text    id=first-name    John
     Input Text    id=last-name    wick
     Input Text    id=login__email    john@gmail.com
     Input Text    id=contact-number    123456789
     Input Password    id=login__password    John123456789
     Select From List By Label    id=CompanySize     10 - 99
     Click Element    xpath=//button[text()='Start My Trial']
     
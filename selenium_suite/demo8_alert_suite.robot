*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
     Append To Environment Variable    Path     C:\\Users\\Naman Thakur\\PycharmProjects\\robot_project\\driver
     Open Browser   url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm   browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Click Element    xpath=//img[@alt='Go']
     Handle Alert
     Close Browser
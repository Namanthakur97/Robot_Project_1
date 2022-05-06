*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
     Append To Environment Variable    Path     C:\\Users\\Naman Thakur\\PycharmProjects\\robot_project\\driver
     Open Browser   url=https://facebook.com/     browser=chrome
     Input Text    id=email    lt6@gmail.com
     Input Password    id=pass    welcome123
     Click Element    name=login
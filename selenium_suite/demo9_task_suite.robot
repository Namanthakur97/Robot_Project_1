*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library    XML

*** Test Cases ***
TC1
     Append To Environment Variable    Path     C:\\Users\\Naman Thakur\\PycharmProjects\\robot_project\\driver
     Open Browser   url=http://demo.openemr.io/b/openemr   browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Input Text    id=authUser    admin
     Input Password    id=clearPass    pass
     Select From List By Value    name=languageChoice   18
     Click Element    id=login-button
     Click Element    xpath=//div[text()='Messages']
     #Click Element    link=Add New


     #Continued!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!




*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***

TC1
     Append To Environment Variable    Path     C:\\Users\\Naman Thakur\\PycharmProjects\\robot_project\\driver
     Open Browser   url=https://facebook.com/     browser=chrome
     Maximize Browser Window
     Click Element    link=Create New Account
     Set Selenium Implicit Wait    30s
     Input Text    name=firstname    Naman
     Input Text    name=lastname    Thakur
     Input Text    name=reg_email__    naman1@gmail.com
     Input Text    name=reg_email_confirmation__    naman1@gmail.com
     Input Password    id=password_step_input    welcome123
     Select From List By Label    name=birthday_day     2
     Select From List By Label    name=birthday_month   Feb
     Select From List By Label   name=birthday_year    1999
     Select Radio Button    sex    2
     Click Element    name=websubmit
     Close Browser

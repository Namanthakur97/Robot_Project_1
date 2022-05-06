*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
     Append To Environment Variable    Path     C:\\Users\\Naman Thakur\\PycharmProjects\\robot_project\\driver
     Open Browser   url=https://www.salesforce.com/in/form/signup/freetrial-sales/?d=jumbo1-btn-ft     browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Input Text    name=UserFirstName   John
     Input Text    name=UserLastName    wick
     Input Text    name=UserEmail    john@gmail.com
     Input Text    name=CompanyName    ABCDEF
     #Input Text    name=UserPhone    123456789
     Select From List By Label    name=UserTitle    IT Manager
     Select From List By Label    name=CompanyEmployees     101 - 500 employees
     Select From List By Label    name=CompanyCountry       United Kingdom
     Click Element    xpath=//div[@class='checkbox-ui']
     Click Element    name=start my free trial
     Element Text Should Be    xpath=//span[contains(@id,'UserPhone')]    Enter a valid phone number

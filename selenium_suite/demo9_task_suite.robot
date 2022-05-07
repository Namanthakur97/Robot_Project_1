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
     Select Frame    xpath=//iframe[@name='msg']
     Click Element    partial link=Add New
     Select From List By Label    id=form_note_type     Pharmacy
     Select From List By Label    id=form_message_status    New
     Select From List By Index    id=users      1
     Input Text    id=note    Hello Naman
     Click Element    id=newnote
     Element Should Contain    id=error_reply_to    Please choose a patient
     Unselect Frame
     Close Browser




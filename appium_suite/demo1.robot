*** Settings ***

Library     AppiumLibrary

Test Teardown   Close Application

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=namanthakur_MFr4yq
    ...     browserstack.key=xDF5NckvxzuzSqbnzmgU
    ...     app="bs://98bdb0bec89cb005c915cc20ec94a054b19a9d9a"
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test

    ${app_source}       Get Source
    Log   ${app_source}

    Set Appium Timeout    30s
    
    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']
    Click Element   xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//*[@text='Sign in']
    Click Element    xpath=//*[@text='Sign in']

    Wait Until Page Contains Element    xpath=//*[@text='Sign in']
    Click Element    xpath=//*[@text='Sign in']
    
    Wait Until Page Contains Element    xpath=//*[@text='Enter an e-mail address or username']
    #Click Element    xpath=//*[@text='Enter an e-mail address or username']

    Input Text    xpath=//*[@text='Enter an e-mail address or username']    namanthakur123@gmail.com

    Input Text    xpath=//*[@text='Password']    Password

    Wait Until Page Contains Element    xpath=(//*[@text='Sign in'])[2]
    Click Element    xpath=(//*[@text='Sign in'])[2]

    Element Should Contain Text     xpath=//*[@text='There was an issue signing in']    There was an issue signing in

   # Close Application
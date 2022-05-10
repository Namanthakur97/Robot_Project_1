** Settings ***

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

   Wait Until Page Contains Element    xpath=//*[@content-desc='Settings']
   Click Element    xpath=//*[@content-desc='Settings']


#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!                         CONTINUE                         !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
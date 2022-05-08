*** Settings ***

Library     AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=namanthakur_MFr4yq
    ...     browserstack.key=xDF5NckvxzuzSqbnzmgU
    ...     app="bs://51a45c0d6b6f4285f3e2384b0bc4d6615f18d65e"
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test

    ${app_source}       Get Source
    Log   ${app_source}
    Click Element    xpath=//*[(@text='Deny')]

    Close Application
*** Settings ***

Library     AppiumLibrary

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

    Close Application
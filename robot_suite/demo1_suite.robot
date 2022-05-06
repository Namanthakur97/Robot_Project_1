*** Settings ***
Library    Telnet
Library    DateTime

*** Test Cases ***
TC1
     Log To Console     Hello
     Log To Console    Naman

TC2
     ${base}     Set Variable    25
     ${height}     Set Variable    1
     Log To Console    ${base}
     ${result}    Evaluate    (${base}*${height})/2
     Log To Console    ${result}

TC3
     ${base1}    Set Variable    25
     ${base2}    Set Variable    25
     ${height}      Set Variable    1
     ${res}     Evaluate    (${base1}+${base2}*${height}/2)
     Log To Console    ${res}

TC4
     ${Date}    Get Current Date
     Log To Console    ${Date}
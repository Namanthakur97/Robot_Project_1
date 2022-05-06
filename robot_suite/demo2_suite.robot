*** Settings ***
Library    OperatingSystem

*** Test Cases ***

TC1
     Create File    path=E:\\Eclipse\\naman.txt

TC2
     Remove File    path=E:\\Eclipse\\naman.txt

TC3
     Create Directory    path=E:\\Eclipse\\Chandigrah

TC4
     Remove Directory    path=E:\\Eclipse\\Chodu
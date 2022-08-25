*** Settings ***

#import base
Resource       base.robot 

Test Setup     New Session
Test Teardown  End Session

*** Test Cases ***
Select radio button
    Go to                             ${url}/radios
    Click Element                    //*[@id="cap"]
    Radio Button Should Be Set To    movies     cap
    Sleep                               5
*** Settings ***
Resource     base.robot

* Test Cases *
Case 1: Acess site
    Open Browser        ${url}    chrome
    Title Should Be     Training Wheels Protocol
    Sleep               2
    Capture Page Screenshot
    Close Browser
    





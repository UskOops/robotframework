*** Settings ***
Library      SeleniumLibrary

* Test Cases *
Case 1: Acess site
    Open Browser        https://training-wheels-protocol.herokuapp.com/    chrome
    Title Should Be     Training Wheels Protocol
    Close Browser

* Variables *


* Keywords *



*** Settings ***
Library      SeleniumLibrary

#passando variáveis para o script
* Variables *
${url}    https://training-wheels-protocol.herokuapp.com/checkboxes 


* Test Cases *
Case 1: Acess site
    Open Browser        ${url}   chrome
    Go To               ${url}/checkboxes
    Close Browser



* Keywords *



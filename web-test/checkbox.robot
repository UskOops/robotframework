*** Settings ***
Library      SeleniumLibrary

#variable for script
* Variables *
${url}    https://training-wheels-protocol.herokuapp.com/checkboxes 


* Test Cases *
Case 1: Acess site
    Open Browser                  ${url}   chrome
    Go To                         ${url}/checkboxes
    Sleep                         1
    Select Checkbox               checkboxes > input[type=checkbox]:nth-child(3)
    Click Element                 id:thor
    Checkbox Should Be Selected   id:thor
    Sleep                         3
    Close Browser



* Keywords *



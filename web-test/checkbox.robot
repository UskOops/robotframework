*** Settings ***
Library      SeleniumLibrary

#variable for script
* Variables *
${url}    https://training-wheels-protocol.herokuapp.com/checkboxes 


* Test Cases *
Case 1: Acess site
#tag me permite rodar somente um teste
    #[Tags]    testeunico 
    Open Browser                  ${url}   chrome
    Go To                         ${url}/checkboxes
    Select Checkbox               css:input[value='iron-man']
    #Click Element                 id:thor using id 
    Checkbox Should Be Selected   css:input[value='iron-man']
    Sleep                         3
    Close Browser



* Keywords *



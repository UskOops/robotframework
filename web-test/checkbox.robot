*** Settings ***
Library      SeleniumLibrary

#Test setup → happens before every test
#test teardown → happens after every test
Test Setup     New Session
Test Teardown  End Session


#variable for script
* Variables *
${url}    https://training-wheels-protocol.herokuapp.com/checkboxes 

* Test Cases *
Case 1: Acess site
#tag me permite rodar somente um teste
    #[Tags]    testeunico 
    Go To                         ${url}/checkboxes
    Select Checkbox               css:input[value='iron-man']
    #Click Element                 id:thor if i use id
    Checkbox Should Not Be Selected   css:input[value='iron-man']
    Sleep                         3



* Keywords *
New Session

    Open browser    ${url}    chrome

End Session
    Close All Browsers


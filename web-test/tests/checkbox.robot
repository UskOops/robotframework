*** Settings ***

#import base
Resource       base.robot 

#Test setup → happens before every test
#test teardown → happens after every test
Test Setup     New Session
Test Teardown  End Session


#variable for script


* Test Cases *
Case 2: Acess site
#tag me permite rodar somente um teste
    #[Tags]    testeunico 
    Go To                         ${url}/checkboxes
    Select Checkbox               css:input[value='iron-man']
    #Click Element                 id:thor if i use id
    Checkbox Should Be Selected   css:input[value='iron-man']
    Sleep                         3




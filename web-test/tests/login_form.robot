*** Settings ***

#import base
Resource       base.robot 

Test Setup     New Session
Test Teardown  End Session

*** Test Cases ***
Case 6: Login successful
    [Documentation]    This test case verifies that the user is able to login successfully
    Go To              ${url}/login
    Input Text         css:input[name=username]    stark
    Input Password     css:input[type="password"]    jarvis!
    Click Element      class:btn-login

    Page Should Contain        Olá, Tony Stark. Você acessou a área logada!     
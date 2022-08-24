*** Settings ***
Library      SeleniumLibrary

* Variables *
${url}    https://training-wheels-protocol.herokuapp.com/checkboxes 

* Keywords *
New Session

    Open browser    ${url}    chrome

End Session
    Close All Browsers


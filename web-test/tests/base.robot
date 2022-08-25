*** Settings ***
Library      SeleniumLibrary

* Variables *
${url}    https://training-wheels-protocol.herokuapp.com
${tag}    [Tags]        test

* Keywords *
New Session

    Open browser    ${url}    chrome

End Session
    Capture Page Screenshot
    Close All Browsers


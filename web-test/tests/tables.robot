** Settings ***

#import base
Resource       base.robot 

Test Setup     New Session
Test Teardown  End Session

*** Test Cases ***
Case 4: Verify the value cotains in the table
    Go to                             ${url}/tables
    Table Should Contain             //*[@id="actors"]        1    $ 10.000.000

Case 5: Find row by key and validate the value

    Go to                            ${url}/tables
    Get WebElement                   xpath:.//tr[contains(., '@robertdowneyjr')]
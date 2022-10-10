*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TestCase1
    FOR    ${i}    IN RANGE    10
           #Exit For Loop If    ${i} == 9
           Log to console   ${i}
    END

*** Test Cases ***
TestCase2
    FOR     ${i}    IN RANGE    1   5
       Log to console      ${i}
    END

*** Test Cases ***
TestCase3
    FOR     ${i}    IN RANGE    2   10  2
       Log to console      ${i}
    END

#*** Test Cases ***
TestCase3
   FOR     ${i}    IN RANGE    10
       Log  Before Continue
       Continue FOR Log to console      ${i}
       Log After
   END

*** Test Cases ***
TestCase4
    FOR     ${i}    IN      1 2 3 4 5 6 7
       Log to console      ${i}
    END
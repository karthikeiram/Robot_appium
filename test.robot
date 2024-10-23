*** Settings ***
Resource   keywords.robot
Resource   variables.robot

*** Test Cases ***
t1
    FOR  ${Index}  IN   @{List_1}
    # Sleep   3
        Log   Hi
    # Run Keyword And Ignore Error     Click Element    ${Next_button}
    END
    Run Keyword And Return Status  fail
    
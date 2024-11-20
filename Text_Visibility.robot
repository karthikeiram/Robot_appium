*** Settings ***
Library     AppiumLibrary
Resource    variables.robot
Resource    keywords.robot

*** Test Cases ***
HomeScreen
    [Setup]    Open Application With Options    ${REMOTE_URL}    ${DEVICE_NAME}    ${APP_PATH}    ${NO_RESET}    ${FULL_RESET}    ${APP_PACKAGE}    ${APP_ACTIVITY} 
    # Checking for elements on home page
        ${result}   ${error}   Run Keyword    Page Should Contain Element   ${Hello_pilot}
        Run Keyword If    '${result}' == 'PASS'    Log to console   Hello Pilot is present
        ...    ELSE    Log to console    Hello Pilot is not present
    # Checking for Synced timings
        ${result}   ${error}   Run Keyword    Page Should Contain Element    ${Synced timing}
        Run Keyword If    '${result}' == 'PASS'    Log to console   Synced Timing is present
        ...    ELSE    Log to console    Synced Timing is not present
    # Checking for the violette Button
        ${result}   Run Keyword   Page Should Contain Element    ${Violette Button}
        Run Keyword If    '${result}' == 'PASS'    Log to console   Violette Button is visible 
        ...    ELSE    Log to console    Violette Button is not visible
    # Checking for the range
        ${content_desc}    Get Element Attribute    ${Range}    content-desc
        Log To Console     Range: ${content_desc}
    # Checking the SOC
        ${content_desc}    Get Element Attribute    ${SOC}    content-desc
        Log To Console     SOC: ${content_desc} 
    # Swiping to Navigate Section
        Log To Console    Swiping right to Enter NAVIGATE Section
        Swipe    329    1714    1050    1714
        
Navigate
    [Setup]    Open Application With Options    ${REMOTE_URL}    ${DEVICE_NAME}    ${APP_PATH}    ${NO_RESET}    ${FULL_RESET}    ${APP_PACKAGE}    ${APP_ACTIVITY} 
    # Checking for Hello Pilot on Navigate page
        ${result}   ${error}   Run Keyword And Ignore Error    Page Should Contain Element   ${Hello_pilot}
        Run Keyword If    '${result}' == 'PASS'    Log to console   Hello Pilot is present
        ...    ELSE    Log to console    Hello Pilot is not present
    # Checking for Synced timings on Naviagte Page
        ${result}   ${error}   Run Keyword And Ignore Error    Page Should Contain Element    ${Synced timing}
        Run Keyword If    '${result}' == 'PASS'    Log to console   Synced Timing is present
        ...    ELSE    Log to console    Synced Timing is not present
    # Checking for texts in navigate section
        ${result}   ${error}   Run Keyword And Ignore Error    Page Should Contain Element   ${Navigation Text}
        Run Keyword If    '${result}' == 'PASS'    Log to console   Navigation Text is present
        ...    ELSE    Log to console    Navigation Text is not present
    # Checking for Ready text
        ${result}   ${error}   Run Keyword And Ignore Error    Page Should Contain Element    ${Ready text}
        Run Keyword If    '${result}' == 'PASS'    Log to console   Ready text is Present
        ...    ELSE    Log to console    Ready text is not present 
    # Checking for Navigate Icon Text
        ${result}   ${error}   Run Keyword And Ignore Error    Page Should Contain Element    ${Navigate icon text}
        Run Keyword If    '${result}' == 'PASS'    Log to console  Navigate icon text is Present
        ...    ELSE    Log to console    Navigate icon text is not present                                                                                                   
    # Swiping to Statistics Section
        Log To Console    Swiping right to Enter Statistics Section
        Swipe    329    1714    1050    1714

Statistics
    [Setup]    Open Application With Options    ${REMOTE_URL}    ${DEVICE_NAME}    ${APP_PATH}    ${NO_RESET}    ${FULL_RESET}    ${APP_PACKAGE}    ${APP_ACTIVITY} 
    # Checking for Hello Pilot on Navigate page
        ${result}   ${error}   Run Keyword And Ignore Error    Page Should Contain Element   ${Hello_pilot}
        Run Keyword If    '${result}' == 'PASS'    Log to console   Hello Pilot is present
        ...    ELSE    Log to console    Hello Pilot is not present
    # Checking for Synced timings on Naviagte Page
        ${result}   ${error}   Run Keyword And Ignore Error    Page Should Contain Element    ${Synced timing}
        Run Keyword If    '${result}' == 'PASS'    Log to console   Synced Timing is present
        ...    ELSE    Log to console    Synced Timing is not present
    # Checking for This week kms
        ${content_desc}    Get Element Attribute    ${Weekly Kms}    content-desc
        Log To Console     This Week kms: ${content_desc}
    # Checking for This Week text
        ${result}   ${error}   Run Keyword And Ignore Error    Page Should Contain Element    ${This week}
        Run Keyword If    '${result}' == 'PASS'    Log to console   This Week text is Present
        ...    ELSE    Log to console    This Week text is not present 
    # Checking for Statistics Icon Text
        ${result}   ${error}   Run Keyword And Ignore Error    Page Should Contain Element    ${Statistics icon text}
        Run Keyword If    '${result}' == 'PASS'    Log to console  Statistics icon text is Present
        ...    ELSE    Log to console    Statistics icon text is not present 


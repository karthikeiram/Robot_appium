*** Settings ***
Resource  keywords.robot
Resource  variables.robot

*** Test Cases ***
Open Diagnostics
     Open Application With Options    ${REMOTE_URL}    ${DEVICE_NAME}    ${APP_PATH}    ${NO_RESET}    ${FULL_RESET}    ${APP_PACKAGE}    ${APP_ACTIVITY}
     # Entering Diagnostics
     Sleep    3
     Log To Console    Swiping left on the home screen to enter Diagnostics
     FOR  ${Index}  IN   @{List_1}
     Swipe    1015    1220    100    1220
     Sleep   2
     END
     # Swipe up on the screen to open navigate Section
     Log To Console    Swiping up to open DIAGNOSTICS Section
     Swipe    321    2070    321    328    
     # Opening TPMS Section
     Log To Console    Opening TPMS Section
     Click Element    ${TPMS}
     Go Back
     # Opening Battery section
     Log To Console    Opening Battery Section
     Click Element    ${BATTERY}
     Sleep   3
     # Opening Charge History
     Log To Console    Opening Charge History
     Click Element    ${CHARGE_HISTORY}
     Sleep   3
     FOR  ${INDEX}  IN  @{List_1}
      Go Back
     END   
     Go Back
     
 
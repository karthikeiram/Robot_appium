*** Settings ***
Resource   keywords.robot
Resource   variables.robot

# Swipe right on the screen
*** Test Cases ***
Open Statistics
   Open Application With Options    ${REMOTE_URL}    ${DEVICE_NAME}    ${APP_PATH}    ${NO_RESET}    ${FULL_RESET}    ${APP_PACKAGE}    ${APP_ACTIVITY}
   
# Swipe right on the screen
    Swipe    329    1714    1050    1714
    Sleep    5
# Swipe right on the screen
    Swipe    329    1714    1050    1714
    Sleep    5
# Swipe Up on the screen
    Swipe    950    2155    950    500
    Sleep    5    
# Swipe right on the ride date history 
    Swipe    270    1772    922    1772
    Sleep    5
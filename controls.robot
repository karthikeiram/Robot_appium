*** Settings ***
Resource   keywords.robot
Resource   variables.robot

*** Test Cases ***
Opening Controls
   Open Application With Options    ${REMOTE_URL}    ${DEVICE_NAME}    ${APP_PATH}    ${NO_RESET}    ${FULL_RESET}    ${APP_PACKAGE}    ${APP_ACTIVITY}
     # Entering Controls
     Sleep    3
     Log To Console    Swiping left on the home screen to enter controls
     Swipe    1015    1220    100    1220
     Sleep    2
     # Swipe up on the screen to open navigate Section
      Log To Console    Swiping up to open CONTROLS Section
      Swipe    321    2070    321    328
     # Changing HILL HOLD state
      Log To Console   Changing HILL HOLD
      Click Element   ${Hill_hold}
      Sleep    3
     # Changing ABS
      Log To Console    Changing ABS
      Click Element   ${ABS}
      Sleep    3
     # Changing TC
      Log To Console    Changing TC
      Click Element   ${TC}
      Sleep    3
     # Switching to ENERGY tab
      Log To Console   Switching to Engery Console
      Click Element   ${Energy}
      Sleep    3
     # Opening Charge History 
      Click Element    ${Charge_History}
      Sleep   3
      Go Back
      Sleep   3
     # Switching to Trips
     Log To Console   Resetting Trip
      Click Element    ${Trips}
      Sleep   2
      Click Element    ${Trip_reset}
      Sleep   2
      Click Element    ${Confirm_reset}
      Sleep   2
     # Switching to Console
     Log To Console   Switching to Console
      Click Element    ${Console}
      Sleep    2
      Click Element   ${Theme}
      Sleep   2
      Click Element   ${Mode}
      Sleep   2
      Click Element    ${Bluetooth}
      Sleep   2
      Go Back


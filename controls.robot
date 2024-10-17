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
      Sleep   2
     # Changing HILL HOLD state
      Log To Console   Changing HILL HOLD
      Click Element   ${Hill_hold}
      Sleep    3
     # Changing ABS
     # Log To Console   Current ABS state
     # ${current_abs}=    Get Element Attribute    ${ABS}    content_desc
      Log To Console    Changing ABS
      Click Element   ${ABS}
      Sleep    3
     # Changing TC
     # Log To Console   Current TC state
     # ${current_tc}=    Get Element Attribute    ${TC}    content_desc
      Log To Console    Changing TC
      Click Element   ${TC}
      Sleep   3
     # Regen 
     # Log To Console    Current Regen Level
     # ${current_regen}=    Get Element Attribute    ${Regen}    content_desc
     # Switching to ENERGY tab
      Log To Console   Switching to Engery Console
      Click Element   ${Energy}
      Sleep    3
     # Opening Charge History 
      Click Element    ${Charge_History}
      Sleep   3
      Go Back
      Sleep   3
     # Getting last charged date
      Wait Until Element Is Visible    xpath=(//android.view.View)[5]    timeout=10s
      ${Last_charged}=    Get Element Attribute   xpath=(//android.view.View)[5]    content-desc
      Log To Console    The last charged date is: ${Last_charged} 
     # Switching to Trips
      Log To Console   Resetting Trip
      Click Element    ${Trips}
      Sleep   2
      ${Odometer}=    Get Element Attribute   ${ODO}    content-desc
      Log To Console    The Odometer reading is: ${Odometer} 
      Click Element    ${Trip_reset}
      Sleep   2
      Click Element    ${Confirm_reset}
      Sleep   2
     # Switching to Console
      Log To Console   Switching to Console
      Click Element    ${Console}
      Log To Console   Current theme & mode are
      ${Current_Theme}=    Get Element Attribute   ${Theme}    content-desc
      ${Current_Mode}=    Get Element Attribute   ${Mode}    content-desc    
      Log To Console    ${Current_Mode}
      Log To Console    ${Current_Theme}
      Sleep   2
      Click Element   ${Theme}
      Sleep   2
      Click Element   ${Mode}      
      Sleep   5
      Log To Console   Changed theme & mode are
      ${Current_Theme}=    Get Element Attribute   ${Theme}    content-desc
      ${Current_Mode}=    Get Element Attribute   ${Mode}    content-desc
      Log To Console    ${Current_Mode}
      Log To Console    ${Current_Theme}  
      Log To Console    Current bluetooth state
      ${Current_Bluetooth}=    Get Element Attribute   ${Bluetooth}    content-desc
      Click Element    ${Bluetooth}
      Log To Console   Current Bluetooth State is ${Current_Bluetooth}
      Sleep   2
      Go Back


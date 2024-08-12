*** Settings ***
Resource   keywords.robot
Resource   variables.robot


*** Test Cases ***
Open Settings
  Open Application With Options    ${REMOTE_URL}    ${DEVICE_NAME}    ${APP_PATH}    ${NO_RESET}    ${FULL_RESET}    ${APP_PACKAGE}    ${APP_ACTIVITY}
   
   Wait Until Page Contains Element   ${Hello_pilot}   timeout=20s
  
   Click Element    ${SETTINGS}
   Sleep    5

  Log To Console    Opening Profile

   Click Element    ${Profile}
   Sleep    5
  
  Log To Console    Navigating Back
   Click Element    ${Back}
   Sleep    5

  Log To Console    Opening Documents
  Click Element    ${Documents}
  Sleep    5
  
  Log To Console    Swiping right on documents
  Swipe    926    1260    138    1260
# Checking for Documents    
  Log To Console   Checking Documents     
    FOR  ${Index}  IN   @{List_1}
      Sleep   3
      Swipe    926    1260    138    1260
    END

  Log To Console    Navigating Back  
  Click Element    ${Back_button}

  Log To Console    Opening Vioette
  Click Element    ${Violette}
  Sleep    2

  Log To Console    Clicking on Crash Alert
  Click Element    ${Crash_alert}

  Log To Console    If permission is asked, allowing the permission
  ${STATUS}    Run Keyword And Return Status   Wait Until Element Is Visible   ${Crash_alert_permission}
  IF  ${STATUS} == True
   Log To Console   Allowing Permission
   Click Element     ${Crash_alert_permission}
  ELSE
   Log To Console    No permission asked
  END
  
  Sleep    2

  #Navigating Back
  Log To Console    Navigating back from crash alet Screen
  Click Element    ${Back_button}
  Sleep   3
  #Opening ACWS
  Click Element     ${Back_button}
  #Opening Delta Watch

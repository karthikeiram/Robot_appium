*** Settings ***
Resource   keywords.robot
Resource   variables.robot
Library    OperatingSystem
Library    contact_permission.py    # robotcode: ignore


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
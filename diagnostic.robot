*** Settings ***
Resource  keywords.robot
Resource  variables.robot

*** Test Cases ***
Open Diagnostics
     Open Application With Options    ${REMOTE_URL}    ${DEVICE_NAME}    ${APP_PATH}    ${NO_RESET}    ${FULL_RESET}    ${APP_PACKAGE}    ${APP_ACTIVITY}
     # Entering Diagnostics
     Sleep    1
     Log To Console    Swiping left on the home screen to enter Diagnostics
     FOR  ${Index}  IN   @{List_1}
     Swipe    1015    1220    100    1220
     Sleep   2
     END
     # Swipe up on the screen to open navigate Section
     Log To Console    Swiping up to open DIAGNOSTICS Section
     Swipe    321    2070    321    328    
     Sleep    3
     # Opening TPMS Section
     Log To Console    Opening TPMS Section
     Click Element    ${TPMS}
     Sleep  1

     # Waiting for the "Front PSI" to be visible
     Wait Until Element Is Visible    xpath=//android.view.View[contains(@content-desc, 'PSI')][1]    timeout=10s
     # Getting the text of the element
     ${Front_psi}=    Get Element Attribute    xpath=//android.view.View[contains(@content-desc, 'PSI')][1]    content-desc
     Log To Console   The front tyre pressure is: ${Front_psi}

     # Extracting numeric value from the text (assuming format is "27 PSI")
     ${Front_psi_value}=    Evaluate    int(''.join(filter(str.isdigit, '${Front_psi}')))    
     # Determining the category based on the value
     ${Front_Psi_range}=    Evaluate    'low' if ${Front_psi_value} < 25 else 'ideal' if 26 <= ${Front_psi_value} <= 35 else 'high'
     Log To Console    The PSI value is categorized as: ${Front_Psi_range}

     # Waiting for the "Rear PSI" to be visible
     Wait Until Element Is Visible    xpath=//android.view.View[contains(@content-desc, 'PSI')][2]    timeout=10s
     # Getting the text of the element
     ${Rear_psi}=    Get Element Attribute    xpath=//android.view.View[contains(@content-desc, 'PSI')][2]    content-desc
     Log To Console   The rear tyre pressure is: ${Rear_psi}

     # Extracting numeric value from the text (assuming format is "27 PSI")
     ${Rear_psi_value}=    Evaluate    int(''.join(filter(str.isdigit, '${Rear_psi}')))    
     # Determining the category based on the value
     ${Rear_Psi_range}=    Evaluate    'low' if ${Rear_psi_value} < 25 else 'ideal' if 26 <= ${Rear_psi_value} <= 35 else 'high'
     Log To Console    The PSI value is categorized as: ${Rear_Psi_range}

     Sleep      2

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
     
 
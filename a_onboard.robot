*** Settings ***
Resource   keywords.robot
Resource   variables.robot
Library    OperatingSystem
Library    Process
Library    colorcheck.py
Library    Collections

*** Test Cases ***
TC-1 Offline Scenario

  [Setup]    Open Application With Options    ${REMOTE_URL}    ${DEVICE_NAME}    ${APP_PATH}    ${NO_RESET}    ${FULL_RESET}    ${APP_PACKAGE}    ${APP_ACTIVITY}  
  [Teardown]    Capture Page Screenshot
  Turn Off Wifi
  Sleep  2
   ${desc}=    Get Element Attribute    xpath=//android.widget.ImageView[@content-desc="Could not establish connection with bike. Please check your phone's internet connection"]    content-desc
    Run Keyword If    '${offline}' in ${desc}    Log to console    Test Passed    ELSE    Log to console    Test Failed

TC-2 Open Application & Login
  [Setup]    Open Application With Options    ${REMOTE_URL}    ${DEVICE_NAME}    ${APP_PATH}    ${NO_RESET}    ${FULL_RESET}    ${APP_PACKAGE}    ${APP_ACTIVITY}  
  [Teardown]    Close Application
    # Print message
    Turn On Wifi
    Log To Console    message=Opening App
    # Wait for element "Get started" to be visible
   
    ${STATUS}    Run Keyword And Return Status   Wait Until Element Is Visible   ${Get_Started_Button}
    IF   ${STATUS} == True   
      # Click on element "Get started"
      Log To Console    Clicking Get Started
      Click Element     ${Get_Started_Button}  
      Sleep    2

      # Input phone number into the field
      Log To Console    Clicking on the phone number field
      Click Element    ${Ph_field} 

      # Input phone number into the field
      Log To Console    Entering phone number
      Input Text     ${Ph_field}   ${Ph_num}

      # click continue after entering ph.num
      Log To Console    Clicking on continue
      Click Element   ${Continue_button}    
      Log To Console    Enter The OTP 

      Sleep    20

      # click continue after entering ph.num
      Log To Console    Clicking on Continue
      Click Element   ${Continue_button}

      Sleep    10

      # Swipe up on the screen
      Log To Console    Swiping up on the Let's Get Started screen
      Swipe    516    2017    500    521

      #Retry clicking on "NEXT" up to 4 times
      Log To Console    Clicking on Next
      FOR  ${Index}  IN   @{List}
        Sleep   3
        Run Keyword And Ignore Error     Click Element    ${Next_button} 
      END
      Sleep   3

      # Try to click on "SKIP", continue if it fails
      Log To Console    Clicking on Skip
      Run Keyword And Ignore Error    Click Element    ${Skip_Button} 
      Sleep    3

    # Allowing Permissions
      Log To Console    Allowing All Permissions
      Run Keyword And Ignore Error  Click Element   ${Permission_1}
      Sleep    1

      Run Keyword And Ignore Error  Click Element   ${Permission_2}
      Sleep    1

      Run Keyword And Ignore Error  Click Element   ${Permission_3}
      Sleep    2

    ELSE
        ${STATUS}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${BLE_Permission}
        IF    ${STATUS}
            Run Keyword And Ignore Error    Click Element    ${BLE_Permission}
        END
        Sleep    3
    END





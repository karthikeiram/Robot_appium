*** Settings ***
Resource   keywords.robot
Resource   variables.robot


*** Test Cases ***
 Open Application & Login

  Open Application With Options    ${REMOTE_URL}    ${DEVICE_NAME}    ${APP_PATH}    ${NO_RESET}    ${FULL_RESET}    ${APP_PACKAGE}    ${APP_ACTIVITY}  

    # Print message
    Log To Console    message=Opening App

    # Wait for element "Get started" to be visible
   
    ${STATUS}    Run Keyword And Return Status   Wait Until Element Is Visible   ${Get_Started_Button}
    IF   ${STATUS} == True   
      # Click on element "Get started"
      Log To Console    Clicking Get Started
      Click Element     ${Get_Started_Button}  

      # Input phone number into the field
      Log To Console    Clicking on the phone number field
      Click Element    ${Ph_field}

      # Input phone number into the field
      Log To Console    Entering phone number
      Input Text     ${Ph_field}   8296924782

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

      ${STATUS}    Run Keyword And Return Status   Wait Until Element Is Visible   ${BLE_Permission}
      IF  '${STATUS}' == 'True'
       Run Keyword And Ignore Error  Click Element   ${BLE_Permission}
      END 
      Sleep   3
    # Swipe right on the screen
      Log To Console    Swiping right to Enter NAVIGATE Section
      Swipe    329    1714    1050    1714

      Sleep    1


      # Swipe up on the screen to open navigate Section
      Log To Console    Swiping up to open NAVIGATE Section
      Swipe    775    2079    775    312

      Sleep    5

      # Swipe Down on the screen to close navigate Section
      Log To Console    Swiping down to close NAVIGATE Section
      Swipe    499    499    499    2000

      # Terminate app (if needed)
      Log To Console    Terminating App
      Terminate Application    ${APP_PACKAGE}
  Run Keyword If    '${TEST STATUS}' == 'FAIL'    Take Screenshot On Failure    
    END


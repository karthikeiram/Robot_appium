*** Settings ***
Resource    keywords.robot
Resource    variables.robot


*** Test Cases ***
Opening Navigate
     Open Application With Options    ${REMOTE_URL}    ${DEVICE_NAME}    ${APP_PATH}    ${NO_RESET}    ${FULL_RESET}    ${APP_PACKAGE}    ${APP_ACTIVITY}
     # Swipe right on the screen
      Sleep   3
      Log To Console    Swiping right to Enter NAVIGATE Section
      FOR  ${Index}  IN   @{List_2}
        Swipe    329    1714    1050    1714
      END  
      Sleep   3
     # Swipe up on the screen to open navigate Section
      Log To Console    Swiping up to open NAVIGATE Section
      Swipe    775    2079    775    312
      Sleep   3
      Go Back

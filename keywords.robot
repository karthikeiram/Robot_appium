*** Settings ***
Library    AppiumLibrary    run_on_failure=AppiumLibrary.CapturePageScreenshot
Resource   keywords.robot
Resource   variables.robot
Library    Process
Library    DateTime
Library    OperatingSystem
Library    Screenshot
*** Keywords ***
Open Application With Options
    [Arguments]    ${remote_url}    ${device_name}    ${app_path}    ${no_reset}    ${full_reset}    ${app_package}    ${app_activity}
    &{options}=    Create Dictionary    deviceName=${device_name}    app=${app_path}    noReset=${no_reset}    fullReset=${full_reset}
    Open Application    ${remote_url}    platformName=Android    automationName=UiAutomator2    appium:options=${options}    appium:appPackage=${app_package}    appium:appActivity=${app_activity}

Start Appium Server
    Start Process    ${Appium Path}    --port ${Appium Port}
    Sleep    5s  # Wait for the server to start
    Log    Appium server started on port ${APPIUM_PORT}

Stop Appium Server
    Terminate Process    appium
    Log    Appium server stopped
Perform Action Based on Condition
    [Arguments]    ${condition}
    Run Keyword If    '${condition}' == 'true'    Log    Condition is true
    ...    ELSE    Log    Condition is false

Capture Screenshot On Failure
    ${timestamp}=    Get Current Date    %Y-%m-%d_%H-%M-%S
    Run Keyword If    '${TEST STATUS}' == 'FAIL'    Capture Page Screenshot    screenshots/screenshot_${TEST NAME}_${timestamp}.png
# Defining Keyword for turning on wifi    
Turn On Wifi
    Run Process    ${ADB_PATH}   shell    svc    wifi    enable
# Defining Keyword for turning off wifi         
Turn Off Wifi
    Run Process    ${ADB_PATH}   shell    svc    wifi    disable   
Check Variable Presence
    # Example to check if a text element with ${VARIABLE_TO_CHECK} is present
    ${is_present}=    Run Keyword And Return Status    Length Should Be    ${offline}    1
    RETURN    ${is_present}    
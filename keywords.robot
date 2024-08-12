*** Settings ***
Library    AppiumLibrary    run_on_failure=AppiumLibrary.CapturePageScreenshot
Resource   keywords.robot
Resource   variables.robot
*** Keywords ***
 Open Application With Options
    [Arguments]    ${remote_url}    ${device_name}    ${app_path}    ${no_reset}    ${full_reset}    ${app_package}    ${app_activity}
    &{options}=    Create Dictionary    deviceName=${device_name}    app=${app_path}    noReset=${no_reset}    fullReset=${full_reset}
    Open Application    ${remote_url}    platformName=Android    automationName=UiAutomator2    appium:options=${options}    appium:appPackage=${app_package}    appium:appActivity=${app_activity}


Perform Action Based on Condition
    [Arguments]    ${condition}
    Run Keyword If    '${condition}' == 'true'    Log    Condition is true
    ...    ELSE    Log    Condition is false

Take Screenshot On Failure
    ${timestamp}=    Get Time    %Y%m%d_%H%M%S
    ${filename}=    Set Variable    screenshot_${timestamp}.png
    Capture Page Screenshot    ${filename}
    Log    Screenshot saved as ${filename}
Capture Screenshot If Failed
    Run Keyword If    '${TEST STATUS}' == 'FAIL'    Take Screenshot On Failure    

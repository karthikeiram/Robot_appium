*** Variables ***
${REMOTE_URL}    http://127.0.0.1:4723
${Appium Path}   C:\Users\Karthikei Ram G U\AppData\Roaming\npm
${Appium Port}   4723
${DEVICE_NAME}   samsung SM-A356E
${APP_PATH}      C:\\Users\\Karthikei Ram G U\\Downloads\\app-debug 2.apk
${APP_PACKAGE}   com.ultraviolette.uvapp
${APP_ACTIVITY}  com.ultraviolette.uv.ultraviolette.MainActivity
${NO_RESET}       ${True}    # Ensure these are boolean values as previously mentioned
${FULL_RESET}     ${False}
${Get_Started_Button}    accessibility_id=Get Started  
${Ph_field}   //android.widget.EditText
${Ph_num}     8296924782
${Continue_button}    accessibility_id=Continue
${Skip_Button}    accessibility_id=SKIP       
${Permission_1}   xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
${Permission_2}   xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_foreground_only_button"]
${Permission_3}   xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"] 
${BLE_Permission}    id=android:id/button1
${index}    value
${Next_button}   accessibility_id=NEXT
${Wait Until Element Is Visible}
${is_visible}
${Close_app}    Close Application
${Settings}     xpath=//android.widget.FrameLayout[@resource-id=\"android:id/content\"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[1]
${Hello_pilot}    accessibility_id=Hello Pilot
@{List}    1    2    3    4
${Profile}    xpath=//*[contains(@content-desc, 'Personal Info')]
${Back}     xpath=//android.widget.ImageView[@content-desc="Profile"]/android.widget.ImageView
${Documents}    accessibility_id=Documents
@{List_1}   1   2 
@{List_2}   1   2   3
${Back_button}     xpath=//android.widget.ImageView
${Violette}     accessibility_id=VIOLETTE
${Crash_alert}    xpath=//*[contains(@content-desc, 'CRASH ALERT')]
${Crash_alert_permission}    id=com.android.permissioncontroller:id/permission_allow_button
${ACWS}    accessibility_id=A.C.W.S
${Delta_watch}   xpath=*[contains(@content-desc, 'DELTA WATCH')]
${Hill_hold}    accessibility_id=HILL HOLD
${ABS}    xpath=//*[contains(@content-desc, 'ABS')]
${TC}   xpath=//*[contains(@content-desc, 'TC')]
${Regen}   class_name=android.widget.SeekBar
${Energy}   accessibility_id=ENERGY
${Charge_History}    accessibility_id=View
${Trips}    accessibility_id=TRIPS
${Trip_reset}    xpath=(//android.widget.Button[@content-desc="Reset"])[1]
${Confirm_reset}    accessibility_id=Reset
${Console}    accessibility_id=CONSOLE
${Theme}    xpath=//*[contains(@content-desc, 'THEME')]
${Mode}    xpath=//*[contains(@content-desc, 'MODE')]
${Bluetooth}    xpath=//*[contains(@content-desc, 'BLUETOOTH')]
${TPMS}    xpath=//*[contains(@content-desc, 'Tyre Pressure')]
${Battery}    xpath=//*[contains(@content-desc, 'Battery Health')]
${Search}    accessibility_id=Search
${Search_Bar}    
${Offline page}  accessibility_id=Could not establish connection with bike. Please check your phone's internet connection
${ADB_PATH}    C:\\Users\\Karthikei Ram G U\\AppData\\Local\\Android\\Sdk\\platform-tools\\adb.exe
${Front_psi}     xpath=//android.view.View[contains(@content-desc, 'PSI')][1]
${ODO}    xpath=//*[contains(@content-desc, 'ODOMETER')]
${contacts_permission}     android.permission.READ_CONTACTS
${offline}     accessibility_id=Could not establish connection with bike. Please check your phone's internet connection
${Synced timing}    xpath=//*[contains(@content-desc, 'Synced')]
${Violette Button}  xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[3]
${Range}    xpath=//*[contains(@content-desc, 'KM')]
${SOC}     xpath=//*[contains(@content-desc, '%')]
${Navigation Text}   accessibility_id=NAVIGATION
${Ready text}    accessibility_id=READY
${Navigate icon text}    accessibility_id=Navigate
${Weekly Kms}   xpath=//*[contains(@content-desc, 'km')]
${This week}    accessibility_id=THIS WEEK
${Statistics icon text}   accessibility_id=Statistics
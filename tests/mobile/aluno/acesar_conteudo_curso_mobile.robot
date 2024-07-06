# This sample code supports Appium Robot client >=2
# pip install robotframework-appiumlibrary
# Then you can paste this into a file and simply run with Robot
#
# Find keywords at: http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html
#
# If your tests fails saying 'did not match any elements' consider using 'wait activity' or
# 'wait until page contains element' before a click command

*** Settings ***
Library           AppiumLibrary
Test Teardown     Close Application

*** Test Cases ***
Test Case Name
    Open Application    http://ondemand.us-west-1.saucelabs.com:80/wd/hub    platformName=Android    appium:platformVersion=9.0    appium:deviceName=Samsung Galaxy S9 FHD GoogleAPI Emulator    browserName=chrome    browserVersion=126    appium:automationName=uiautomator2    appium:ensureWebviewsHavePages=${True}    appium:url=https://testando.eveclass.com    appium:nativeWebScreenshot=${True}    sauce:options=[object Object]    appium:newCommandTimeout=${3600}    appium:connectHardwareKeyboard=${True}
    Swipe    ${530}    ${1507}    ${504}    ${347}
    ${el1} =    Set Variable     android=new UiSelector().text("Começar Agora")
    Click Element    ${el1}
    ${el2} =    Set Variable     android=new UiSelector().text("Entrar")
    Click Element    ${el2}
    ${el3} =    Set Variable     android=new UiSelector().resourceId("email-i-31276719719119667")
    Input Text    ${el3}    foullucobougroi-6467@yopmail.com
    ${el8} =    Set Variable     android=new UiSelector().className("android.view.View").instance(13)
    Click Element    ${el8}
    ${el12} =    Set Variable     android=new UiSelector().resourceId("senha-i-7350126298908037")
    Input Text    ${el12}    Admin@23
    ${el13} =    Set Variable     class=android.widget.Button
    Click Element    ${el13}
    Swipe    ${484}    ${1335}    ${549}    ${637}
    ${check_nao_robot} =    Set Variable     class=android.widget.CheckBox
    Click Element    ${check_nao_robot}
    ${el15} =    Set Variable     android=new UiSelector().className("android.view.View").instance(43)
    Click Element    ${el15}
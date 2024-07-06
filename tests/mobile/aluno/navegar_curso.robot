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
    Open Application    http://ondemand.us-west-1.saucelabs.com:80/wd/hub    
    ...    platformName=Android    
    ...    appium:platformVersion=9.0    
    ...    appium:deviceName=Samsung Galaxy S9 FHD GoogleAPI Emulator    
    ...    browserName=chrome    browserVersion=126    
    ...    appium:automationName=uiautomator2    
    ...    appium:ensureWebviewsHavePages=${True}    
    ...    appium:url=https://testando.eveclass.com    
    ...    appium:nativeWebScreenshot=${True}    
    # ...    sauce:options=[object Object]    
    ...    appium:newCommandTimeout=${3600}    
    ...    appium:connectHardwareKeyboard=${True}

    Swipe    ${595}    ${1598}    ${633}    ${1175}
    ${el1} =    Set Variable     android=new UiSelector().text("Começar Agora")
    Click Element    ${el1}
    ${el2} =    Set Variable     android=new UiSelector().text("Entrar")
    Click Element    ${el2}
    ${el3} =    Set Variable     android=new UiSelector().resourceId("email-i-41616635784324055")
    Input Text    ${el3}    foullucobougroi-6467@yopmail.com    
    ${el12} =    Set Variable     android=new UiSelector().resourceId("senha-i-7350126298908037")
    Input Text    ${el12}    Admin@23
    ${btn_login} =    Set Variable     class=android.widget.Button
    Click Element    ${btn_login}
    Swipe    ${576}    ${813}    ${545}    ${1118}
    ${input_code} =    Set Variable     android=new UiSelector().resourceId("code-i-3595486381750889")
    Input Text    ${input_code}    526126    #Codigo de verificacao localização
    ${btn_input_code_send} =    Set Variable     android=new UiSelector().text("Enviar")
    Click Element    ${btn_input_code_send}    #Codigo de verificacao localização
    Swipe    ${534}    ${607}    ${511}    ${992}
    ${el17} =    Set Variable     android=new UiSelector().text("Continuar Curso")
    Click Element    ${el17}
    Swipe    ${614}    ${790}    ${572}    ${1152}
    ${el18} =    Set Variable     android=new UiSelector().text("Básico")
    Click Element    ${el18}
    ${el19} =    Set Variable     android=new UiSelector().text("Eric Csatlós Azevedo")
    Click Element    ${el19}
    ${el20} =    Set Variable     android=new UiSelector().text("Próximo: Aula")
    Click Element    ${el20}
    ${el21} =    Set Variable     class=android.widget.Image
    Click Element    ${el21}
    Swipe    ${622}    ${607}    ${629}    ${1263}
    Swipe    ${565}    ${957}    ${561}    ${1499}
    ${el22} =    Set Variable     android=new UiSelector().text("Próximo: Aula")
    Click Element    ${el22}
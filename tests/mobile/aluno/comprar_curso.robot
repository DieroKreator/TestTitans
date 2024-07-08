*** Settings ***
Library           AppiumLibrary
Test Teardown     Close Application

*** Test Cases ***
Comprar curso com cupom inválido
    Open Application    https://testtitan05:1c5cd134-db64-40f0-b77e-328b3e7fc702@ondemand.us-west-1.saucelabs.com:443/wd/hub
    ...    platformName=Android    
    ...    appium:platformVersion=9.0    
    ...    appium:deviceName=Samsung Galaxy S9 FHD GoogleAPI Emulator    
    ...    browserName=chrome    
    ...    browserVersion=126    
    ...    appium:automationName=uiautomator2    
    ...    appium:ensureWebviewsHavePages=${True}    
    ...    appium:url=https://testando.eveclass.com/pt   
    ...    appium:nativeWebScreenshot=${True}    
    # ...    sauce:options=[object Object]    
    ...    appium:newCommandTimeout=${3600}    
    ...    appium:connectHardwareKeyboard=${True}

    Swipe    ${500}    ${1488}    ${523}    ${1102}
    ${btn_começar_agora} =    Set Variable     android=new UiSelector().text("Começar Agora")
    Click Element    ${btn_começar_agora}
    ${btn_entrar_home} =    Set Variable     android=new UiSelector().text("Entrar")
    Click Element    ${btn_entrar_home}
    ${campo_email} =    Set Variable     android=new UiSelector().resourceId("email-i-42620922565754486")
    Input Text    ${campo_email}    foullucobougroi-6467@yopmail.com
    ${el12} =    Set Variable     android=new UiSelector().resourceId("senha-i-7350126298908037")
    Input Text    ${el12}    Admin@23

    @{finger} =    Create List    ${603}    ${1099}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${454}    ${1118}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${92}    ${1846}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${122}    ${1697}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${332}    ${1686}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${862}    ${1858}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${809}    ${1545}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${763}    ${1831}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${92}    ${1995}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${53}    ${1697}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${164}    ${1533}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${286}    ${1537}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${278}    ${2148}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    ${btn_login} =    Set Variable     class=android.widget.Button
    Click Element    ${btn_login}
    Swipe    ${523}    ${1377}    ${545}    ${679}
    @{finger} =    Create List    ${126}    ${1175}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    Swipe    ${504}    ${1472}    ${561}    ${961}
    @{finger} =    Create List    ${244}    ${603}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${618}    ${671}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${267}    ${957}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${961}    ${1369}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    ${btn_recaptcha_verify} =    Set Variable     android=new UiSelector().resourceId("recaptcha-verify-button")
    Click Element    ${btn_recaptcha_verify}
    ${btn_send_captcha} =    Set Variable     class=android.widget.Button
    Click Element    ${btn_send_captcha}
    Swipe    ${481}    ${1575}    ${607}    ${767}
    ${campo_codigo_verificacao} =    Set Variable     android=new UiSelector().resourceId("code-i-6109827787659338")
    Input Text    ${campo_codigo_verificacao}    181899
    ${el8} =    Set Variable     android=new UiSelector().text("Crie uma conta")
    Click Element    ${el8}
    Swipe    ${576}    ${1148}    ${580}    ${637}
    ${el9} =    Set Variable     android=new UiSelector().text("FC")
    Click Element    ${el9}
    ${el10} =    Set Variable     android=new UiSelector().text("FC")
    Click Element    ${el10}
    ${el11} =    Set Variable     android=new UiSelector().className("android.widget.Button").instance(0)
    Click Element    ${el11}
    ${el12} =    Set Variable     android=new UiSelector().className("android.widget.Button").instance(1)
    Click Element    ${el12}
    @{finger} =    Create List    ${278}    ${2155}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    Swipe    ${481}    ${1144}    ${530}    ${610}
    Swipe    ${542}    ${946}    ${553}    ${717}
    Swipe    ${645}    ${1297}    ${645}    ${984}
    Swipe    ${515}    ${1266}    ${515}    ${877}
    Swipe    ${553}    ${1324}    ${553}    ${1049}
    ${curso_matematicas} =    Set Variable     android=new UiSelector().description("Curso").instance(0)
    Click Element    ${curso_matematicas}
    Swipe    ${591}    ${1362}    ${595}    ${1015}
    ${el14} =    Set Variable     id=com.android.chrome:id/bottom_container
    Click Element    ${el14}
    Swipe    ${549}    ${1022}    ${584}    ${568}
    ${el15} =    Set Variable     id=com.android.chrome:id/bottom_container
    Click Element    ${el15}
    Swipe    ${534}    ${1404}    ${603}    ${881}
    @{finger} =    Create List    ${912}    ${1995}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    Swipe    ${843}    ${1137}    ${851}    ${1377}
    ${el16} =    Set Variable     android=new UiSelector().resourceId("xxxx xxxx xxxx xxxx-i-2675861913760287")
    Input Text    ${el16}    4111111111111111
    ${el17} =    Set Variable     android=new UiSelector().resourceId("mmyy-i-2732063641836077")
    Input Text    ${el17}    0126
    ${el18} =    Set Variable     android=new UiSelector().resourceId("cvv-i-4019598693621986")
    Input Text    ${el18}    126
    ${el19} =    Set Variable     android=new UiSelector().resourceId("nome no cartao-i-30956003972585005")
    Input Text    ${el19}    Teste
    ${el20} =    Set Variable     android=new UiSelector().resourceId("possui um cupom aplique aqui-i-15752631332469525")
    Input Text    ${el20}    Cupons
    ${el21} =    Set Variable     android=new UiSelector().text("Aplicar")
    Click Element    ${el21}
    Swipe    ${565}    ${1209}    ${595}    ${965}
    Swipe    ${591}    ${1575}    ${603}    ${1354}
    Swipe    ${702}    ${1572}    ${706}    ${1053}
    ${el22} =    Set Variable     id=com.android.chrome:id/bottom_container
    Click Element    ${el22}
    Swipe    ${530}    ${1415}    ${530}    ${915}
    ${el23} =    Set Variable     android=new UiSelector().resourceId("swal2-title")
    Click Element    ${el23}
    ${el24} =    Set Variable     class=android.widget.Button
    Click Element    ${el24}
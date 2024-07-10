*** Settings ***
Library           AppiumLibrary
Test Teardown     Close Application

*** Test Cases ***
Comprar Curso de Graca
    Open Application    https://testtitan05:1c5cd134-db64-40f0-b77e-328b3e7fc702@ondemand.us-west-1.saucelabs.com:443/wd/hub   
    ...    platformName=Android    
    ...    appium:platformVersion=9.0    
    ...    appium:deviceName=Samsung Galaxy S9 FHD GoogleAPI Emulator    
    ...    browserName=chrome    browserVersion=126    
    ...    appium:automationName=uiautomator2    
    ...    appium:ensureWebviewsHavePages=${True}    
    ...    appium:nativeWebScreenshot=${True}    
    # ...    sauce:options=[object Object]    
    ...    appium:newCommandTimeout=${3600}    
    ...    appium:connectHardwareKeyboard=${True}

    Go To Url    https://testando.eveclass.com/pt

    ${titulo_home} =    Set Variable     android=new UiSelector().text("Advanced Tests - Teste")
    Wait Until Element Is Visible    ${titulo_home}    Advanced Tests - Teste
    Swipe    ${488}    ${1537}    ${530}    ${603}
    ${btn_comecar_agora} =    Set Variable     accessibility_id=Começar Agora
    Click Element    ${btn_comecar_agora}
    ${titulo_cursos} =    Set Variable     android=new UiSelector().text(" Todos cursos")
    Wait Until Element Is Visible    ${titulo_cursos}     Todos cursos
    ${btn_entrar} =    Set Variable     android=new UiSelector().text("Entrar")
    Click Element    ${btn_entrar}
    ${titulo_login} =    Set Variable     android=new UiSelector().text("Insira seu email e senha de acesso.")
    Wait Until Element Is Visible    ${titulo_login}    Insira seu email e senha de acesso.
    ${el6} =    Set Variable     android=new UiSelector().resourceId("email-i-9324250751413105")
    Input Text    ${el6}    wivugroipesse-8868@yopmail.com
    ${el7} =    Set Variable     android=new UiSelector().resourceId("senha-i-25760529486026228")
    Input Text    ${el7}    Admin@23
    ${btn_login} =    Set Variable     class=android.widget.Button
    Click Element    ${btn_login}
    Swipe    ${668}    ${576}    ${587}    ${1320}
    Swipe    ${687}    ${526}    ${610}    ${1461}    # Entrar Dashboard
    ${btn_procurar_curso} =    Set Variable     android=new UiSelector().text("Procurar cursos")
    Click Element    ${btn_procurar_curso}
    Swipe    ${523}    ${675}    ${519}    ${1419}
    Swipe    ${645}    ${1339}    ${652}    ${1110}
    Swipe    ${595}    ${1205}    ${603}    ${462}
    Swipe    ${595}    ${1289}    ${622}    ${351}
    Swipe    ${683}    ${1137}    ${706}    ${439}
    Swipe    ${668}    ${1194}    ${622}    ${347}
    Swipe    ${526}    ${362}    ${530}    ${877}
    ${img_curso_java} =    Set Variable     android=new UiSelector().className("android.view.View").instance(18)
    Click Element    ${img_curso_java}
    Swipe    ${523}    ${751}    ${439}    ${1141}
    Swipe    ${542}    ${1156}    ${595}    ${698}
    Swipe    ${412}    ${1289}    ${416}    ${847}
    @{finger} =    Create List    ${511}    ${732}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    Swipe    ${607}    ${511}    ${690}    ${1385}
    Swipe    ${519}    ${1316}    ${580}    ${713}
    ${titulo_curso} =    Set Variable     android=new UiSelector().text("Java em poucos passos")
    Wait Until Element Is Visible    ${titulo_curso}
    Element Text Should Be   ${titulo_curso}    Java em poucos passos
    @{finger} =    Create List    ${900}    ${1991}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}    #Comprar_btn
    Swipe    ${496}    ${339}    ${458}    ${950}
    Swipe    ${729}    ${1366}    ${729}    ${828}
    ${field_cpf} =    Set Variable     android=new UiSelector().resourceId("cpf-i-36932299379832944")
    Wait Until Element Is Visible    ${field_cpf}
    Input Text    ${field_cpf}    960.223.753-80
    ${field_telefone} =    Set Variable     android=new UiSelector().resourceId("telefone-i-4523669513282558")
    Input Text    ${field_telefone}    (21) 3646-9140
    ${field_cep} =    Set Variable     android=new UiSelector().resourceId("cep-i-11701979632357703")
    Input Text    ${field_cep}    24322-210
    ${field_numero} =    Set Variable     android=new UiSelector().resourceId("numero-i-270434707520105")
    Wait Until Element Is Visible    ${field_numero}
    Input Text    ${field_numero}    520
    ${btn_confirmar_compra} =    Set Variable     class=android.widget.Button
    Click Element    ${btn_confirmar_compra}
    Swipe    ${622}    ${637}    ${626}    ${1305}
    ${titulo_sucesso} =    Set Variable     android=new UiSelector().text("Compra realizada!")
    Click Element    ${titulo_sucesso}
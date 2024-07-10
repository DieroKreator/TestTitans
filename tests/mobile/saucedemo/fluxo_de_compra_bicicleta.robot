*** Settings ***
Library           AppiumLibrary
Test Teardown     Close Application

*** Variables ***
${SAUCE_USERNAME}    oauth-alinetestando389-e3c66
${REMOTE_URL}    https://${SAUCE_USERNAME}:%{SAUCE_ACCESS_KEY}@ondemand.us-west-1.saucelabs.com:443/wd/hub

*** Test Cases ***
Fluxo de compra da Bicicleta
    Open Application    ${REMOTE_URL}    platformName=Android    appium:platformVersion=9.0    appium:deviceName=Samsung Galaxy S9 FHD GoogleAPI Emulator    browserName=chrome    browserVersion=126    appium:automationName=uiautomator2    appium:ensureWebviewsHavePages=${True}    appium:url=https://www.saucedemo.com/    appium:nativeWebScreenshot=${True}    appium:newCommandTimeout=${3600}    appium:connectHardwareKeyboard=${True}

    Go To Url    https://www.saucedemo.com/
    ${txt_usuario} =    Set Variable    id=user-name
    Input Text    ${txt_usuario}    standard_user
    ${txt_senha} =    Set Variable    id=password
    Input Text    ${txt_senha}    secret_sauce
    ${btn_login} =    Set Variable     id=login-button
    Click Element    ${btn_login}
    ${img_produto} =    Set Variable    id=item_0_img_link
    Click Element    ${img_produto}
    ${btn_login} =    Set Variable    id=add-to-cart
    Click Element    ${btn_login}
    ${label_titulo_card_produto} =    Set Variable    id=back-to-products
    Element Text Should Be    ${label_titulo_card_produto}    Back to products
    ${carrinho} =    Set Variable    id=shopping_cart_container
    Click Element    ${carrinho}                             
    ${btn_checkout} =    Set Variable     id=checkout
    Click Element    ${btn_checkout}
    ${txt_nome} =    Set Variable     id=first-name
    Input Text    ${txt_nome}    Aline
    ${txt_sobrenome} =    Set Variable     id=last-name
    Input Text    ${txt_sobrenome}    Duque
    ${txt_CEP} =    Set Variable     id=postal-code
    Input Text    ${txt_CEP}    29000000
    ${btn_continue} =    Set Variable     id=continue
    Click Element    ${btn_continue}    
    ${btn_finish} =    Set Variable     id=finish
    Click Element    ${btn_finish}
*** Settings ***
Library           AppiumLibrary
Test Teardown     Close Application

*** Variables ***
${SAUCE_USERNAME}    helenatestando3
${REMOTE_URL}    https://${SAUCE_USERNAME}:5c3cb679-31c8-4285-89ef-5844b32f590c@ondemand.eu-central-1.saucelabs.com:443/wd/hub
${URL}               https://www.saucedemo.com/
${txt_email}    id=user-name
${txt_senha}    id=password
${btn_login}    id=login-button
${img_produto}    css=div.page_wrapper div.inventory_container div.inventory_list div.inventory_item:nth-child(4) div.inventory_item_img a:nth-child(1) > img.inventory_item_img
${txt_produto}    css=div.page_wrapper div.inventory_container div.inventory_list div.inventory_item:nth-child(4) div.inventory_item_description div.inventory_item_label a:nth-child(1) > div.inventory_item_name
${txt_price}    css=div.page_wrapper div.cart_contents_container div.cart_list div.cart_item div.cart_item_label div.item_pricebar:nth-child(3) > div.inventory_item_price
${btn_adicionar_carrinho}    css=#add-to-cart
${ico_carrinho}    css=div:nth-child(1) div.header_container.inventory_details div.primary_header div.shopping_cart_container:nth-child(3) > a.shopping_cart_link
${btn_checkout}    id=checkout

*** Test Cases ***
Comprar Fleece
    Open Application    ${REMOTE_URL}    
    ...    platformName=Android  
    ...    appium:platformVersion=9.0  
    ...    appium:deviceName=Samsung Galaxy S9 FHD GoogleAPI Emulator 
    ...    browserName=chrome  
    ...    appium:automationName=uiautomator2         
    ...    appium:ensureWebviewsHavePages=${True}
    ...    url=https://www.saucedemo.com/     
    ...    appium:nativeWebScreenshot=${True}  
    ...    appium:newCommandTimeout=${3600}   
    ...    appium:connectHardwareKeyboard=${True}   
    
    Log To Console     Navigating to URL...
    Go To Url    ${URL}  

    #Login
    Log To Console     Digitar username...
    Wait Until Page Contains Element    ${txt_email}   10000ms
    Input Text       ${txt_email}    standard_user

    Log To Console     Digitar password...
    Wait Until Page Contains Element    ${txt_senha}    10000ms
    Input Text       ${txt_senha}    secret_sauce

    Log To Console     Clicar no botao de Login...
    Wait Until Page Contains Element    ${btn_login}    10000ms
    Click Element    ${btn_login}

    #Escolher produto
    Log To Console     Verificar imagem do produto...
    Wait Until Page Contains Element    ${img_produto}    10000ms
    Click Element    ${img_produto}  

    Log To Console     Adicionar produto no carrinho...
    Wait Until Page Contains Element    ${btn_adicionar_carrinho}    10000ms
    Click Element    ${btn_adicionar_carrinho}

    Log To Console    Clicar no carrinho...
    Wait Until Page Contains Element    ${ico_carrinho}    10000ms
    Click Element    ${ico_carrinho}

    #Log To Console     Verificar nome do produto...
    #Element Text Should Be    ${txt_produto}    Sauce Labs Fleece Jacket    50000ms

    #Log To Console     Verificar preco do produto...
    #Element Text Should Be    ${txt_price}    \$49\.99    50000ms

    Log To Console    Confirmar checkout...
    Wait Until Page Contains Element    ${btn_checkout}    10000ms
    Click Element    ${btn_checkout}
   
    #Preencher cadastro
    ${txt_first_name} =    Set Variable     css=#first-name
    Input Text    ${txt_first_name}    Rebecca 
    ${txt_last_name} =    Set Variable     css=#last-name
    Input Text    ${txt_last_name}    Winter
    ${txt_zip_code} =    Set Variable     css=#postal-code
    Input Text    ${txt_zip_code}    89750
    ${btn_continue} =    Set Variable     css=#continue
    Click Element    ${btn_continue}
    
    #Checkout Overview
    ${btn_finish} =    Set Variable     css=#finish
    Click Element    ${btn_finish}

    #Back Home
    ${btn_return} =    Set Variable     css=#back-to-products
    Click Element    ${btn_return}
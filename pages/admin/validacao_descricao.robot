*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}  https://testando.eveclass.com/pt
${LINK_TEXT_COMECAR_AGORA}  Começar Agora
${SUPPORT_ACTION_BUTTON}  css=#support-action > .button-text > span > span
${EMAIL_INPUT}  css=.input-wrapper > .input-wrapper-inpt > input[type='email']
${PASSWORD_INPUT}  css=.input-wrapper > .input-wrapper-inpt > input[type='password']
${LOGIN_BUTTON}  css=.button-text > span
${SUCCESS_ELEMENT}  css=.overview-group-title.overview-group-title_primary
${SALES_BUTTON}    css=#SALES > .item-pill
${PRODUCTS_TAB}    css=.nav-group:nth-child(5) > .nav-item:nth-child(2) > span
${PRODUCT_LOGICA}   css=.list-item:nth-child(6)
${PRODUCT_NAME}    Lógica de Programação
${PRODUCT_VALUE}   amount
${browser}    

*** Keywords ***

Acesso a página Vendas
    Click Element    ${SALES_BUTTON}
    Sleep    2s

Click Botão produtos
    Click Element    ${PRODUCTS_TAB}
    Sleep    2s

Click em Lógica de programação
    Click Element    ${PRODUCT_LOGICA}
    Sleep    2s

Verify Page Contains Lógica de programação
    Page Should Contain    ${PRODUCT_NAME}

Verify Page Contains De Graça
    Page Should Contain    ${PRODUCT_VALUE}
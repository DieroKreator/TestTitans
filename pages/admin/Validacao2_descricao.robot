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
${PRODUCT_Atividade Pomodoro}   css=.list-item:nth-child(4) h1
${PRODUCT_NAME}    Atividade Pomodoro
${PRODUCT_VALUE}   amount
${browser}    

*** Keywords ***

Acesso a página Vendas
    Click Element    ${SALES_BUTTON}
    Sleep    2s

Click Botão produtos
    Click Element    ${PRODUCTS_TAB}
    Sleep    2s

Click em Atividade Pomodoro
   Page Should Contain    ${PRODUCT_NAME} 

Verify Page Contains Atividade Pomodoro
    Page Should Contain    ${PRODUCT_VALUE}

Verify Page Contains De Graça
    Page Should Contain    ${PRODUCT_VALUE}
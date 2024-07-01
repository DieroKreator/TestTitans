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
${PRODUCT_TesteLink}   css=.list-item:nth-child(5) .list-item-content-title
${PRODUCT_NAME}    TesteLink
${PRODUCT_VALUE}   aR$ 9,00
${browser}    

*** Keywords ***

Acesso a página Vendas
    Click Element    ${SALES_BUTTON}
    Sleep    2s

Click Botão produtos
    Click Element    ${PRODUCTS_TAB}
    Sleep    2s

Click em TesteLink
    Click Element    ${PRODUCT_TesteLink}
    Sleep    2s

Verify Page Contains TesteLink
    Page Should Contain    ${PRODUCT_NAME}


Verify Page Contains R$ 9,00
    Page Should Contain    ${PRODUCT_VALUE}
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${titulo_comprar}    css=.span.mobile-text
${campo_cpf}    xpath=//input[@data-vv-as='CPF']
${campo_telefone}    xpath=//input[@data-vv-as='Telefone']
${campo_CEP}    xpath=//input[@data-vv-as='CEP']
${campo_numero}    xpath=//div[2]/div/div[3]/div/div/input

${botao_confirmar_compra}    css=i[class="far fa-check"]   

*** Keywords ***
Clicar no botao Confirmar Compra
    Click Element    ${botao_confirmar_compra}
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${titulo_comprar}    css=span.mobile-text
${campo_cpf}    css=#cpf-i-2675898788229057
${campo_telefone}    css=#telefone-i-8120929323059273
${campo_CEP}    css=#cep-i-6688931628059766
${campo_numero}    css=#numero-i-7765842485616674

${botao_confirmar_compra}    css=i[class="far fa-check"]   

*** Keywords ***
Clicar no botao Confirmar Compra
    Click Element    ${botao_confirmar_compra}
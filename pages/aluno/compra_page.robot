*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${titulo_comprar}    css=span[class="mobile-text"]
${campo_cpf}    css=input[id="possui um cupom aplique aqui-i-1230196058532522"]
${campo_telefone}    css=input[id="telefone-i-5499720810494603"]
${campo_CEP}    css=input[name="cep-i-5717017440634384"]
${campo_numero}    id=numero-i-8886531804149704
${botao_confirmar_compra}    css=i[class="far fa-check"]   

*** Keywords ***
Clicar no botao Confirmar Compra
    Click Element    ${botao_confirmar_compra}
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${btn_remover}   css=.button:nth-child(3) > .button-text > span > span
${btn_confirmar}    css=.swal2-confirm
${btn_salvar}    css=.vs__search:nth-child(2)
${btn_editar}    css=.button:nth-child(5) > .button-text > span > span

*** Keywords ***
Clicar Botao Remover    
    Click Element   ${btn_remover}

Clicar Botao Confirmar
    Click Button    ${btn_confirmar}

Clicar Botao Salvar
    Click Element    ${btn_salvar}

Clicar Botao Editar
    Click Element    ${btn_editar}
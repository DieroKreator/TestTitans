*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${titulo_aula}    css=.h1
${btn_Aulas}    css=.nav-group:nth-child(6) > .nav-item:nth-child(2) > span
${btn_NovaAula}    css=.button:nth-child(4) > .button-text > span > span
${buscar}    css=.input-wrapper-inpt >input
# ${input_buscar}    css=.div:nth-child(4) > .button-text > span > span
# ${url}        https://testando.eveclass.com/pt/admin/conteudo
# ${browser}    Chrome

*** Keywords ***
# Open página
#     Open Browser    url=${url}    browser=${browser}
#     Maximize Browser Window
#     Set Browser Implicit Wait    10000ms
Selecionar Aula
    Click Element    css=.list-item:nth-child(1) .list-item-content-title

Preencher Input Buscar
    [Arguments]    ${aulaProcurada}
    Sleep    500ms
    Click Element    ${buscar}
    Sleep    500ms
    Input Text    ${buscar}    ${aulaProcurada}  
    Sleep    1000ms  

Clicar Botao Aulas
    Click Element    ${btn_Aulas}

Clicar Botao Nova Aula
    Sleep    500ms
    Click Element    ${btn_NovaAula}   


*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${radio_linkYoutube}    css=.button-radio-options > button:nth-child(2)
${txt_link_Youtube}    css=div:nth-child(2)>input
${linkYoutube}    https://www.youtube.com/watch?v=97l0Ahu2efE&t=436s
${txt_titulo_da_aula}    css=input[data-vv-as='Título da aula']
${txt_descricao}    css=.textarea-wrapper >textarea
${btn_salvar}    css=.button:nth-child(4)

*** Keywords ***

Selecionar Link Youtube
    Click Element    ${radio_linkYoutube} 
Adicionar Link Youtube
    [Arguments]    ${linkYoutube}
    Input Text    ${txt_link_Youtube}    ${linkYoutube}

Preencher Titulo da aula
    [Arguments]    ${tituloDaAula}
    Press Keys    css=seletor_do_elemento    CTRL+A+BACKSPACE
    Input Text    ${txt_titulo_da_aula}    ${tituloDaAula}

Preencher Descricao
    [Arguments]    ${descricao}
    Press Keys    css=seletor_do_elemento    CTRL+A+BACKSPACE
    Input Text    ${txt_descricao}    ${descricao}

Clicar Salvar
    Click Button    ${btn_salvar}
    Sleep    500ms

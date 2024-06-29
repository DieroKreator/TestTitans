*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${botao_procurar_cursos}    css=span.button-text    

*** Keywords ***
Clicar no botao Procurar Cursos
    Click Element    ${botao_procurar_cursos}    #Só aparece quando o usuario é noco e ainda não adicionou um curso

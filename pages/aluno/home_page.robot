*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${botao_entrar}    css=a[href="/pt/auth/entrar"]   

*** Keywords ***
Clicar no botao Entrar
    Click Element    ${botao_entrar}    #Botao com bug
    Execute Javascript    location.reload(true)    #linha de codigo pra atualizar a pagina
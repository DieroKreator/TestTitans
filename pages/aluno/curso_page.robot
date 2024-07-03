*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${titulo_curso}    css=h1[data-v-c255f858]  
${titulo_curso_matematicas}    css=h1[data-v-3a360dec]  
${valor_curso}    css=p[data-v-1d047951=""]
${botao_comprar}    css=a[href="/pt/comprar/produto/java-em-poucos-passos"]
${botao_comprar_curso}    xpath=//span[text()="Comprar"]

*** Keywords ***
Clicar no botao Comprar
    Click Element    ${botao_comprar}

Clicar no botao Comprar Curso
    Click Element    ${botao_comprar_curso}
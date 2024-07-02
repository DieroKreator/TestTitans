*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${titulo_curso}    css=h1[data-v-c255f858]  
${valor_curso}    css=p[data-v-1d047951=""]
${botao_comprar}    css=a[href="/pt/comprar/produto/java-em-poucos-passos"]

*** Keywords ***
Clicar no botao Comprar
    Click Element    ${botao_comprar}
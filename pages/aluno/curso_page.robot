*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${titulo_curso}    css=h1[data-v-c255f858]  
${valor_curso}    css=div.landing main.website-page:nth-child(3).div.website-component.section.sticky-top.content-view div.content-wrapper.div.header-background.div.container.no-sidebar.div.relative.div.content-aside div:nth-child(1).div.content-purchase-info.div.content-buy.div.content-price > p:nth-child(1)
${botao_comprar}    css=a[href="/pt/comprar/produto/java-em-poucos-passos"]

*** Keywords ***
Clicar no botao Comprar
    Click Element    ${botao_comprar}
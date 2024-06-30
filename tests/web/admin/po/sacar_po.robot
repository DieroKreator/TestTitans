*** Settings ***
Resource    ../../../../pages/admin/base_page_admin.robot

*** Test Cases ***
Sacar Valor de Meu Saldo
    #Login   
   # Click Começar Agora
    #Click Support Action Button
    #Enter Email    email
    #Enter Password    password
   # Click Login Button
    #Clicar em "Confirmar Saque"

    #Pagina Vendas
    Sleep    20000ms
    Tirar Screenshot    1-Vendas
    Element Text Should Be    ${btn_vendas}    Vendas
    Clicar em "Vendas"  
    
    #Pagina Meu Saldo   
    Element Text Should Be    ${meu_saldo}    Meu Saldo
    Clicar em "Meu saldo"
    Tirar Screenshot    2-Meu Saldo
    
    #Solicitar e Confirmar Saque
    Clicar em "Sacar"

    Tirar Screenshot    3-Solicitar Saque
    Element Text Should Be    ${solicitar_saque}    Solicitar Saque?

    Element Text Should Be    ${confirmar_saque}    Confirmar
    Clicar em "Confirmar Saque"
    
    Tirar Screenshot    4-Erro no Servidor                      
    
   
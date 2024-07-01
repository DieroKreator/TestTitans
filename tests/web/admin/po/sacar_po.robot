*** Settings ***
Resource    ../../../../pages/admin/base_page_admin.robot
Library    ../../../../.venv/lib/python3.12/site-packages/robot/libraries/Telnet.py

*** Test Cases ***
Sacar Valor de Meu Saldo
    #Login
    #Tirar Screenshot   1-Login
    #Click Começar Agora
    #Click Support Action Button
    #Enter Email  rodolfo_itg@yahoo.com.br
    #Enter Password  TESTE
    #Tirar Screenshot   2-Login preenchido
    #Click Login Button
    #Verify Login Successful
    #Tirar Screenshot   3-Logado com sucesso

    #Pagina Vendas
    Sleep    20000ms    #sleep p/ realizar login manual temporiariamente
    Clicar em "Vendas" 
    Element Text Should Be    ${btn_vendas}    Vendas
    Sleep    5000ms
    Tirar Screenshot    4-Meu Saldo
    
    #Pagina Meu Saldo 
    Clicar em "Meu saldo"  
    Element Text Should Be    ${meu_saldo}    Meu Saldo
    Sleep    5000ms
    Tirar Screenshot    5-Valores do Saldo
    
    #Solicitar e Confirmar Saque
    Clicar em "Sacar"

    Tirar Screenshot    6-Solicitar Saque
    Element Text Should Be    ${solicitar_saque}    Solicitar Saque?

    Element Text Should Be    ${confirmar_saque}    Confirmar
    Clicar em "Confirmar Saque"                     
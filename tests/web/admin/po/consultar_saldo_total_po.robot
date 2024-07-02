*** Settings ***
Resource    ../../../../pages/admin/base_page_admin.robot

*** Test Cases ***
Consulta Relatório de Saldo Total
    Tirar Screenshot   1_Login
    #Click Começar Agora
    #Click Support Action Button
    Enter Email  rodolfo_itg@yahoo.com.br
    Enter Password  TESTE
    Tirar Screenshot   2_Login preenchido
    Click Login Button
    #Verify Login Successful
    Tirar Screenshot   3_Logado com sucesso

    #Pagina Vendas
    Sleep    9000ms   #sleep p/ resolver captcha
    Element Text Should Be    ${btn_vendas}    Vendas
    Tirar Screenshot    4-Visão Geral
    Clicar em "Vendas"  
    
    #Pagina Meu Saldo
    Clicar em "Meu saldo"  
    Element Text Should Be    ${meu_saldo}    Meu Saldo
    Sleep    10000ms   

    #Pagina Assert Valores
    Element Text Should Be    ${text_explicacao_saldo}    Para começar a vender, é necessário primeiro configurar sua conta bancária, para que possamos destinar os valores de suas vendas à sua conta. Em “Meu Saldo” são listadas todas as transações de vendas e saques da sua plataforma.
    Tirar Screenshot    5-Página Valores Saldo 

    ${actual_sum}=    Calculate Sum    ${total_sacado}    ${a_receber}    ${pronto_saque}    
    Log    Calculated sum is: ${actual_sum}
    ${saldo_total_valor}=    Converter valor para float    ${saldo_total}  
    Should Be Equal As Numbers    ${actual_sum}    ${saldo_total_valor}                  
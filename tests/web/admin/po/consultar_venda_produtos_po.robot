*** Settings ***
Resource    ../../../../pages/admin/base_page_admin.robot

*** Test Cases ***
Consulta Relatório de Venda de Produtos
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
    Sleep    20000ms
    Element Text Should Be    ${btn_vendas}    Vendas
    Tirar Screenshot    4-Visão Geral
    Clicar em "Vendas"  
    
    #Pagina Produtos
    Clicar em "Vendas de Produtos"
    Sleep    5000ms
    Element Text Should Be    ${msg_produtos}    Vendas de Produtos

    #Pagina Assert Valores
    Tirar Screenshot    5-Página Valores Venda de Produtos
    Element Text Should Be    ${text_explicacao_produtos}     Nessa tela, você poderá acompanhar todas as vendas de produtos (cursos e downloads digitais) realizadas. Para começar a vender, crie um produto, contendo um curso ou download digital e coloque-o à venda.

    ${actual_sum}=    Calculate Sum    ${vendas_produtos_canceladas}    ${vendas_produtos_pendentes}     ${vendas_produtos_confirmadas}      
    Log    Calculated sum is: ${actual_sum}
    ${vendas_produtos_emitidas_total_valor}=    Converter valor para float    ${vendas_produtos_emitidas_total}   
    Should Be Equal As Numbers    ${actual_sum}    ${vendas_produtos_emitidas_total_valor} 
*** Settings ***
Resource    ../../../../pages/admin/base_page_admin.robot

*** Test Cases ***
Test Successful Editar 
        Enter Email    alinelenzi@gmail.com
        Enter Password    teste
        Click Login Button
        Clicar Botao Aulas
        Element Text Should Be    ${btn_NovaAula}    Nova Aula
        Selecionar Aula
        Clicar Botao Editar
        Preencher Titulo da aula    Computação em Nuvem
        Preencher Descricao    Nova descrição
        Clicar Botao Salvar
        Wait Until Element Is Visible    ${btn_NovaAula}
        Close All Browsers
        
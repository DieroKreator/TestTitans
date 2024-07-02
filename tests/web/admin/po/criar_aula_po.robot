*** Settings ***
Resource    ../../../../pages/admin/base_page_admin.robot

*** Test Cases ***
Test Successful Criar 
    Enter Email    alinelenzi@gmail.com
    Enter Password    teste
    Click Login Button
    Clicar Botao Aulas
    Clicar Botao Nova Aula
    Selecionar Link Youtube
    Adicionar Link Youtube    ${linkYoutube}
    Preencher Titulo da aula    Nuvem
    Preencher Descricao    Introdução a Nuvem
    Clicar Salvar
    Wait Until Element Is Visible    ${btn_NovaAula}
    Close All Browsers
*** Settings ***
Resource    ../../../../pages/admin/base_page_admin.robot

*** Test Cases ***
Test Successful Consultar Aula
    Enter Email    alinelenzi@gmail.com
    Enter Password    teste
    Click Login Button
    Clicar Botao Aulas
    Element Text Should Be    ${btn_NovaAula}    Nova Aula
    Preencher Input Buscar    Nuvem
    Close All Browsers
    
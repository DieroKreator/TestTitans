*** Settings ***
Library    SeleniumLibrary
Resource    ../../../pages/admin/base_page_admin.robot
Resource    ../../../pages/admin/login_admin_page.robot
Resource    ../../../pages/admin/validacao2_descricao.robot

*** Variables ***
${URL}  https://testando.eveclass.com/pt/auth/entrar


*** Test Cases ***
Validacao de produtos
    Abrir navegador
    Enter Email    rodolfo_itg@yahoo.com.br
    Enter Password    TESTE
    Click Login Button
    Verify Login Successful
    Acesso a página Vendas
    Click Botão produtos
    Click em Atividade Pomodoro
    Verify Page Contains Atividade Pomodoro
    Verify Page Contains De Graça
    Fechar navegador
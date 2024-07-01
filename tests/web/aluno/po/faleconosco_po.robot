*** Settings ***
Resource    ../../../pages/aluno/base_page_aluno.robot
Resource    ../../../pages/aluno/compra_page.robot
Resource    ../../../pages/aluno/login_aluno_page.robot
Resource    ../../../pages/aluno/faleconosco_page.robot

*** Test Cases ***
Fale com nosso por contato
    Abrir navegador   
    Enter Email    arthur.guedes@hotmail.com
    Enter Password    ArthurGuedes1708#
    Click Login Button
    Acesso a página Contato
    Preencher informacoes de fale conosco : escreva nome completo, email , mensagem
    Clique no botão "Enviar"
    Tirar Screenshot    MENSAGEM ENVIADA COM SUCESSO
    Close All Browsers


*** Settings ***
Resource    ../../../pages/aluno/base_page_aluno.robot
Resource    ../../../pages/aluno/compra_page.robot
Resource    ../../../pages/aluno/login_aluno_page.robot

*** Test Cases ***
Pagamento por boleto
    Abrir navegador   
    Enter Email    arthur.guedes@hotmail.com
    Enter Password    ArthurGuedes1708#
    Click Login Button
    Acesso a página Cursos
    Acesso ao curso especifico escolhido
    Acesso a pagina de pagamento do curso
    Clique na caixa "Boleto"
    Preencher informacoes de pagamento : sou pessoa juridica , CPF , Telefone , Endereço
    Clique no botão "Confirmar Compra" Boleto
    Tirar Screenshot    PAGAMENTO COM BOLETO GERADO COM SUCESSO
    Close All Browsers


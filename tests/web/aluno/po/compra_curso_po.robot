*** Settings ***
Resource    ../../../../pages/aluno/base_page_aluno.robot
Resource    ../../../../pages/aluno/dashboard_page.robot
Resource    ../../../../pages/aluno/inventario_cursos_page.robot
Resource    ../../../../pages/aluno/curso_page.robot
Resource    ../../../../pages/aluno/compra_page.robot
Resource    ../../../../pages/aluno/confirmacao_page.robot

*** Test Cases ***
Compra Curso Graca
    [Documentation]  Testa o login bem-sucedido com credenciais válidas.
    # Open Login Page  ${URL}
    Tirar Screenshot   1_Login
    #Click Começar Agora
    #Click Support Action Button
    Enter Email    toxatoiprasa-4084@yopmail.com
    Enter Password    Admin@2023
    Tirar Screenshot    2_Login preenchido
    Click Login Button
    Verify Login Successful
    Tirar Screenshot    3_Logado com sucesso
    # Clicar no botao Procurar Cursos
    # Element Text Should Be    ${titulo_todos_cursos}     Todos cursos
    # Tirar Screenshot    4_Lista cursos
    # Clicar no Curso
    # Element Text Should Be    ${titulo_curso}     Java em poucos passos  
    # Element Text Should Be    ${valor_curso}    $0.00
    # Tirar Screenshot    5_Detalhe curso       
    # Clicar no botao Comprar
    # Element Text Should Be    ${titulo_comprar}    ${botao_comprar}
    # Input Text    ${campo_cpf}    361.063.079-54
    # Input Text    ${campo_telefone}    (61) 99900-9403
    # Input Text    ${campo_CEP}    73350-350
    # Input Text    ${campo_numero}    856
    # Tirar Screenshot    6_Campos preenchidos       
    # Clicar no botao Confirmar Compra
    # Element Text Should Be    ${titulo_confirmacao}    ${botao_comprar}
    # Tirar Screenshot    7_Compra confirmada    
    # Realizar Logout 
    Close All Browsers

# Compra Curso Cupom

# Compra Curso Credito
*** Settings ***
Resource    ../../../../pages/aluno/base_page_aluno.robot
Resource    ../../../../pages/aluno/dashboard_page.robot
Resource    ../../../../pages/aluno/inventario_cursos_page.robot
Resource    ../../../../pages/aluno/curso_page.robot
Resource    ../../../../pages/aluno/compra_page.robot
Resource    ../../../../pages/aluno/confirmacao_page.robot

*** Test Cases ***
Comprar Curso Graca
    [Documentation]  Testa o fluxo de compra de um curso de graça
    # Open Login Page  ${URL}
    Tirar Screenshot   1_Login
    #Click Começar Agora
    #Click Support Action Button
    Enter Email    foullucobougroi-6467@yopmail.com
    Enter Password    Admin@23
    Tirar Screenshot    2_Login preenchido
    Click Login Button
    Verify Login Successful
    Tirar Screenshot    3_Logado com sucesso
    Clicar no botao Procurar Cursos
    Element Text Should Be    ${titulo_todos_cursos}     Todos cursos
    Tirar Screenshot    4_Lista cursos
    Clicar no Curso
    Element Text Should Be    ${titulo_curso}     Java em poucos passos  
    # Element Text Should Be    ${valor_curso}    $0.00
    Tirar Screenshot    5_Detalhe curso       
    Clicar no botao Comprar
    # Element Text Should Be    ${titulo_comprar}    Comprar
    Input Text    ${campo_cpf}    361.063.079-54
    Input Text    ${campo_telefone}    (61) 99900-9403
    Input Text    ${campo_CEP}    73350-350
    Sleep    500ms
    Input Text    ${campo_numero}    856
    Tirar Screenshot    6_Campos preenchidos       
    Clicar no botao Confirmar Compra
    Element Text Should Be    ${titulo_confirmacao}    Compra realizada com sucesso!
    # Tirar Screenshot    7_Compra confirmada    
    # Realizar Logout 
    Close All Browsers

Comprar Curso com Cupom
    [Documentation]  Testa o fluxo de compra de um curso cupom
    # Open Login Page  ${URL}
    Tirar Screenshot   1_Login
    #Click Começar Agora
    #Click Support Action Button
    Enter Email    foullucobougroi-6467@yopmail.com
    Enter Password    Admin@23
    Tirar Screenshot    2_Login preenchido
    Click Login Button
    Verify Login Successful
    Tirar Screenshot    3_Logado com sucesso
    Clicar no botao Procurar Cursos
    Element Text Should Be    ${titulo_todos_cursos}     Todos cursos
    Tirar Screenshot    4_Lista cursos
    Clicar no Curso
    Element Text Should Be    ${titulo_curso}     Java em poucos passos  
    # Element Text Should Be    ${valor_curso}    $0.00
    Tirar Screenshot    5_Detalhe curso       
    Clicar no botao Comprar Curso    
    # Element Text Should Be    ${titulo_comprar}    Comprar
    Input Text    ${campo_cpf}    361.063.079-54
    Input Text    ${campo_telefone}    (61) 99900-9403
    Input Text    ${campo_CEP}    73350-350
    Sleep    500ms
    Input Text    ${campo_numero}    856
    Tirar Screenshot    6_Campos preenchidos       
    Adicionar um Cupom    CUPOM
    Clicar no botao Aplicar    
    Clicar no botao Confirmar Compra
    Element Text Should Be    ${titulo_confirmacao}    Compra realizada com sucesso!
    # Tirar Screenshot    7_Compra confirmada    
    # Realizar Logout 
    Close All Browsers
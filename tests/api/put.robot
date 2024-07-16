*** Settings ***
Library        RequestsLibrary
Library    OperatingSystem
Resource       ../../resources/put.resource

    
**** Test Cases ***
Testar Detalhes do Livro
    [Documentation]    Verifica se os detalhes do livro são corretos
    Verify Book Details    ${expected_isbn}    ${expected_title}    ${expected_author}    
    ...    ${expected_pages}    ${expected_publisher}    ${expected_id}    ${expect_username}   
    Verificar Descrição ISBN
    Verificar Mensagem de Erro 400
    Verificar Mensagem de Erro 401

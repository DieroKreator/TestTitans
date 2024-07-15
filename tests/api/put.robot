*** Settings ***
Resource    ../../../resources/Put.resource
Resource   

*** Variables ***
${new_title}    New Book Title    
${valid_book_id}    12345    
${invalid_book_id}    67890  
${base_url}    https://bookstore.toolsqa.com/swagger/#/BookStore/BookStoreV1BooksByISBNPut
${json_data}    024-07-13T01:40:11.131Z
${new_title}    Sucesso   	



*** Test Cases ***
 ISBN  
    Log    New Title: ${new_title}
    Log    Valid Book ID: ${valid_book_id}

    ${response}    Update Book Title    mysession    ${valid_book_id}    ${new_title}       
    Verify Update Response    ${response}    200    ${new_title}

Update Nonexistent Book
    [Documentation]    Tenta atualizar um livro com ID inexistente
    [Tags]    PUT    Book

    # Load JSON data from file
    ${json_data}    Load Book Data    ${json_file}

    # Extract necessary fields from JSON
    ${new_title}    ${valid_book_id}    Extract Book Fields    ${json_data}

    # Attempt to update book with invalid ID
    ${response}    Update Book Title    mysession    ${invalid_book_id}    ${new_title}

    # Log and verify response
    Log Response    ${response}
    Verify Error Response    ${response}    400
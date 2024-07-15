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


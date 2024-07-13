*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem
Resource    ../../resources/post_books.resource

*** Variables ***
${base_url}
${ISBN}
${userId}

*** Test Cases ***
Test addListOfBooks
    [Documentation]    Test to post a list of books
    ${response}    addListOfBooks    ${base_url}    ${userId}    ${ISBN}
    Log    Response status: ${response.status_code}
    Log    Response content: ${response}

    
*** Settings ***
Library    SeleniumLibrary
Resource    ../../../pages/aluno/dashboard_page.robot
Resource    ../../../pages/aluno/base_page_aluno.robot
Resource    ../../../../pages/aluno/dash_page.robot

*** Variables ***
${URL}    https://testando.eveclass.com/pt/cursos   # URL do seu aplicativo ou site
${BROWSER}    Chrome    # Navegador que você está usando
       


*** Test Cases ***
Test Click Menu Item
    [Documentation]    Testa o clique em um item do menu de cursos
    Click Menu Item    Cursos 
    Verify Page Contains    Cursos
    Tirar Screenshot    1_Cursos

*** Test Cases ***    
Test Click Menu Item
    [Documentation]    Testa o clique em um item do menu de cursos
    Click Menu Item    Sobre
    Verify Page Contains    Hora de falar sobre você
    Tirar Screenshot    2_Sobre

*** Test Cases ***
Test Click Menu Item
    [Documentation]    Testa o clique em um item do menu de cursos
    Click Menu Item    Blog
    Verify Page Contains    Escolhas do Editor
    Tirar Screenshot    3_blog

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${titulo_todos_cursos}    css=h1.course-list-nav    
${botao_curso_java_graca}    css=a[href="/pt/cursos/java-em-poucos-passos"]

*** Keywords ***
Clicar no Curso
    # [Arguments]    ${nome_aula}
    Click Element    ${botao_curso_java_graca}    #Só aparece quando o usuario é noco e ainda não adicionou um curso
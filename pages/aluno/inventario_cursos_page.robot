*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${titulo_todos_cursos}    css=h1.course-list-nav    
${botao_curso_java_graca}    css=a[href="/pt/cursos/java-em-poucos-passos"]
${botao_curso_matematicas}    css=a[href="/pt/cursos/curso-de-matematica"]

*** Keywords ***
Clicar no Curso
    # [Arguments]    ${nome_aula}
    Click Element    ${botao_curso_java_graca}    #Só aparece quando o usuario é novo e ainda não adicionou um curso

Clicar no Curso Matematicas
    Click Element    ${botao_curso_matematicas}    #Só aparece quando o usuario é novo e ainda não adicionou um curso
*** Settings ***
Resource    ../../../pages/aluno/base_page_aluno.robot
Suite Setup    Obter Data e Hora
Test Setup    base_page_aluno.Abrir navegador
Test Teardown    base_page_aluno.Fechar navegador


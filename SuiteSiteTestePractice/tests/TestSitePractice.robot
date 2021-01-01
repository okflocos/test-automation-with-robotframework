*** Settings ***
Resource            ../resource/Resource.robot
Test Setup          Abrir navegador
#Test Teardown       Fechar navegador

###SETUP ele roda keyword antes da suite ou antes de um teste
###TEARDOWN ele roda a keyword depois de uma suite ou um teste

*** Test Case ***
Caso de Teste 01: Pesquisar produto inexistente
#    [Setup]     Fechar navegador chrome
    Acessar a página home do site
    Conferir se a página home foi exibida
    Digitar o nome do produto "Blouse" no campo de pesquisa 
    Clicar no botão pesquisar 
    Conferir se o produto "Blouse" foi listado no site
#    [Teardown]   Fechar navegador
###
Caso de Teste 02: Pesquisar produto não existente
    Acessar a página home do site
    Conferir se a página home foi exibida
    Digitar o nome do produto "Blouse" no campo de pesquisa 
    Clicar no botão pesquisar 
#    Conferir mensagem de erro "No results were found for your "itemNãoExistente"
#
*** Keywords ***
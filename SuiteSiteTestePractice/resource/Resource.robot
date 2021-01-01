*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${URL}          http://automationpractice.com 

*** Keywords ***
### Setup e Teardown ###
Abrir navegador
    Open Browser    about:blank   ${BROWSER}

Fechar navegador
    Close Browser 

### Passo-a-passo
Acessar a página home do site
    Go To   http://automationpractice.com   
    Title Should Be     My Store

Digite o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text   name=search_query    ${PRODUTO}

Clicar no botão pesquisar
    Click Element   name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
Wait Until Element Is Visible    css=#center_colum > h1
Tittle Should Be                 Search - My Store
Page Should Contain Image        xpath=//*[id="center_colum"]//[*src='http://automationpractice.com/img/p/7/7-large_default.jpg']
Page Should Contain Link         xpath=//*[id="center_colum"]//a[@class="product-name"][contains(text(),"${PRODUTO}")]
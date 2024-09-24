# Teste prodedural
*** Settings ***
Documentation    Essa suite testa o site amazon.com.br.
Resource         amazon_resource.robot
Test Setup       Abri o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Esse teste verifica o menu mais vendido do site de amazon.com.br
    ...                e verifica a categoria Computadores e Informática
    [Tags]             menus    categorias
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se o título da página fica "Eletrônicos e Tecnologia |Amazon.com.br"
    Verificar se aparece a frase "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"


Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]             busca_produtos    lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de p
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa listando o produto "Xbox Series S"

Caso de Teste 03 - Adicionar no carrinho
    [Documentation]    Adicionar Xbox Series S no carrinho    
    [Tags]             adicionar_produto
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de p
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa listando o produto "Xbox Series S"
    Na página de resultado para "Xbox Series S"
    Clicar na imagem Xbox Series S
    Verificar o resultado da pesquisa listando o produto "Console Xbox Series S"
"
 
    
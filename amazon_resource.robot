*** Settings ***
Library    SeleniumLibrary
Library    String


*** Variables ***
${URL}    https://www.amazon.com.br/
${MENU_ELETRONICOS}    //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEAER_ELETTRONICOS}    //h1[contains(.,'Eletrônicos e Tecnologia')]  
${TEXTO_HEADER_ELETRONICOS}    Eletrônicos e Tecnologia

*** Keywords ***
Abri o navegador
    Open Browser    browser=chrome
    Set Window Size    2000  1000
   

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To     url=${URL}
    Sleep     25s
    Wait Until Element Is Visible   locator=${MENU_ELETRONICOS}

Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Wait Until Page Contains    text=${TEXTO_HEADER_ELETRONICOS} 
    Wait Until Element Is Visible    locator=${HEAER_ELETTRONICOS}
Verificar se aparece a frase "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//a[@aria-label='${NOME_CATEGORIA}']

Digitar o nome de produto "${PRODUTO}" no campo de p
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[3]







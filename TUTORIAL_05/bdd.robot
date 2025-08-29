*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Dados do teste
${NomeDaMusica}    Iron Man

#Variáveis de configuração
${URL}        https://www.youtube.com/
${Browser}    Chrome

#Elementos
${button_reject_cookies}   //button[@aria-label="Recusar o uso de cookies e outros dados para os fins descritos"]
${Input_pesquisa}          //input[@name="search_query"]
${Button_pesquisar}        //button[@aria-label="Search"]
${Primeira_opcao}          (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${Prova}                   (//div[contains(text(),"Compartilhar")])[3]  #Div do botão Compartilhar. Prova que aparece quando o vídeo é executado

*** Keywords *** 
Dado que eu acesso o site do youtube
    Open Browser     ${URL}    ${Browser}
    Click Element    ${button_reject_cookies}  #Fecha o popup (alteração minha)
    Sleep    5s  #Aguarda o carregamento da página após o fechamento do cookie (alteração minha)

Quando digito o nome da música
    Wait Until Element Is Visible    ${Input_pesquisa}    20
    Input Text       ${Input_pesquisa}    ${NomeDaMusica}

E clico no botão buscar
    Click Element    ${Button_pesquisar}

E clico na primeira opção da lista
    Wait Until Element Is Visible    ${Primeira_opcao}    10
    Click Element    ${Primeira_opcao}

Então o vídeo é executado
    Wait Until Element Is Visible    ${Prova}    10
    Element Should Be Visible    ${Prova}
    Sleep    10s
    Close Browser

*** Test Cases ***
Cenário 1: Executar vídeo no site do Youtube
    Dado que eu acesso o site do youtube
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o vídeo é executado
    

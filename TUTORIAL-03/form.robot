*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_firstname}        name:firstname
${input_lastname}         name:lastname
${input_gender}           id:sex-0
${input_exp}              id:exp-6
${input_datepicker}       id:datepicker
${input_profession}       id:profession-1
${input_tool}             id:tool-2
${button_submit}          id:submit

*** Keywords ***
abrir navegador e acessar o site
    Open Browser    https://www.techlistic.com/p/selenium-practice-form.html    chrome

preencer campos
    Sleep         5s
    Input Text    ${input_firstname}      Geraldo
    Input Text    ${input_lastname}       Jorge
    Input Text    ${input_datepicker}     19/02/2025

selecionar radio button
    Sleep         1s
    Click Element    ${input_gender} 
    Click Element    ${input_exp}

marcar checkbox
    Sleep         1s
    Click Element    ${input_profession}
    Click Element    ${input_tool}

clicar em submit
    Sleep         1s
    Scroll Element Into View    ${button_submit}
    Click Element               ${button_submit}
    
fechar navegador
    Close Browser

*** Test Cases ***
Cenário 1: Preencher formulário
    abrir navegador e acessar o site
    #Atenção precisa fechar o popup de cookies e qualquer outro pop que fique na frente do componente
    preencer campos
    selecionar radio button
    marcar checkbox
    clicar em submit
    fechar navegador


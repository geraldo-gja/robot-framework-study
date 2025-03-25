*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_firstname}                //input[@name="firstname"]
${input_lastname}                 //input[@name="lastname"]
${input_gender}                   //input[@id="sex-0"]
${input_exp}                      //input[@id="exp-6"]
${input_datepicker}               //input[@id="datepicker"]
${input_profession}               //input[@id="profession-1"]
${input_tool}                     //input[@id="tool-2"]
${option_continents}              //option[contains(text(),"Europe")]
${option_selenium_comands}        //option[contains(text(),"Navigation Commands")]
${button_submit}                  //button[@id="submit"]

*** Keywords ***
abrir navegador e acessar o site
    Open Browser    https://www.techlistic.com/p/selenium-practice-form.html    chrome

esperar
    Sleep         1s

preencer campos
    esperar
    Input Text    ${input_firstname}      Geraldo
    Input Text    ${input_lastname}       Jorge
    Input Text    ${input_datepicker}     19/02/2025

marcar radio button
    esperar
    Click Element    ${input_gender} 
    Click Element    ${input_exp}

marcar checkbox
    esperar
    Click Element    ${input_profession}
    Click Element    ${input_tool}

selecionar opção  
    esperar 
    Click Element    ${option_continents}
    Click Element    ${option_selenium_comands}

clicar em submit
    esperar
    Scroll Element Into View    ${button_submit}
    Click Element               ${button_submit}
    
fechar navegador
    Close Browser

*** Test Cases ***
Cenário 1: Preencher formulário
    abrir navegador e acessar o site
    #Atenção precisa fechar o popup de cookies e qualquer outro pop que fique na frente do componente
    preencer campos
    marcar radio button
    marcar checkbox
    selecionar opção
    clicar em submit
   # fechar navegador


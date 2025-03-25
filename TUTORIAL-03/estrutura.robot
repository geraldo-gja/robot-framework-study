*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${variavel1}    teste

*** Keywords ***
abrir site do google
    Open Browser    https://www.google.com/    chrome

fechar navegador
    Close Browser

abrir site do gmail
    Open Browser    https://mail.google.com/mail/u/0/#inbox    chrome    

*** Test Cases ***
Cenário 1: Teste de abrir navegador
    abrir site do google
    fechar navegador

Cenário 2: Teste de abrir gmail
    abrir site do gmail
    fechar navegador

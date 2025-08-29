*** Settings ***
Resource        ../../Steps/Main_Steps.robot
Test Setup      Fazer Login
Test Teardown   Fechar Navegador


*** Test Cases ***
TC01 - Reservando passagem de destinos dentro dos EUA na classe econômica
    Dado que eu realizo uma busca de um vôo ida e volta
    E saindo de Los Angeles EUA
    #E indo para 
    #E saindo na data
    #E voltando na data
    #Quando eu clico em buscar
    #E seleciono o primeiro vôo
    #E preencho os dados do passageiro
    #E preencho os dados de pagamento
    #E clico em confirmar
    #Então a página de confirmação de viagem é exibida
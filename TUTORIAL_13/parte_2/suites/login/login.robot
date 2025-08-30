*** Settings ***
Resource          ../../resources/main.robot
Test Setup        Acessar o site e logar com o perfil Admin  #muda de Admin para Client para abrir na outra URL
Test Teardown     Fechar navegador


*** Test Cases ***
TC - DUMY    #Dumy é utilizado para teste
    E informo o pais de origem sendo o Brazil
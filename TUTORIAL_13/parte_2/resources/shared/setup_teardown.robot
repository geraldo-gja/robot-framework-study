*** Settings ***
Resource          ../../resources/main.robot

*** Comments ***
    IF  "${perfil}"=="Admin"
        Open Browser    ${geral.Admin_URL}  ${geral.Browser}
        Maximize Browser Window
        Wait Until Element Is Visible  ${login.Input_EmailLogin}  10
        Input Text                     ${login.Input_EmailLogin}  ${geral.Admin_User}
        Wait Until Element Is Visible  ${login.Input_SenhaLogin}  10
        Input Text                     ${login.Input_SenhaLogin}  ${geral.Admin_Password}
        Run Keyword And Ignore Error   Wait Until Element Is Visible  ${registro.Button_Cookie}     5s
        Run Keyword And Ignore Error   Click Element                  ${registro.Button_Cookie}
        Wait Until Element Is Visible  ${login.Button_Logar}      10
        Click Element                  ${login.Button_Logar}
    ELSE IF  "${perfil}"=="Client"
        Open Browser  ${geral.Client_URL}  ${geral.Browser}
        Maximize Browser Window
        Wait Until Element Is Visible  ${login.Input_EmailLogin}  10
        Input Text                     ${login.Input_EmailLogin}  ${geral.Client_User}
        Wait Until Element Is Visible  ${login.Input_SenhaLogin}  10
        Input Text                     ${login.Input_SenhaLogin}  ${geral.Client_Password}
        Run Keyword And Ignore Error   Wait Until Element Is Visible  ${registro.Button_Cookie}     5
        Run Keyword And Ignore Error   Click Element                  ${registro.Button_Cookie}
    END    

*** Keywords ***
Acessar o site e logar com o perfil ${perfil}
    #Exemplo If I-line
    #IF  "${perfil}"=="Admin"  Logar como Admin  ELSE IF  "${perfil}"=="Client"  Logar como Cliente
    Run Keyword If  "${perfil}"=="Admin"   Logar como Admin
    Run Keyword If  "${perfil}"=="Client"  Logar como Cliente

Acessar o site e logar
    Dado que eu acesse o php travels
    E realize o cadastro
    E faça o Login

Fechar navegador
    Close Browser    
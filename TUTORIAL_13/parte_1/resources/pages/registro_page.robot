*** Settings ***
Resource          ../main.robot


*** Variables ***
&{registro}
...     Input_PrimeiroNome=//input[@placeholder="First Name"]
...     Input_UltimoNome=//input[@placeholder="Last Name"]
...     Input_Telefone=//input[@placeholder="Phone"]
...     Input_Email=//input[@placeholder="Email"]
...     Input_Senha=//input[@placeholder="Password"]
...     Button_Signup=//button[@class="btn btn-default btn-lg btn-block effect ladda-button waves-effect"]
...     Button_Cookie=//button[@id="cookie_stop"]


*** Keywords ***
E realize o cadastro
    Wait Until Element Is Visible      ${home.A_Signup}            10
    Click Element                      ${home.A_Signup}
    Wait Until Element Is Visible      ${registro.Input_PrimeiroNome}  10
    Input Text                         ${registro.Input_PrimeiroNome}  ${dados_registro.PrimeiroNome}
    Wait Until Element Is Visible      ${registro.Input_UltimoNome}    10
    Input Text                         ${registro.Input_UltimoNome}    ${dados_registro.UltimoNome}     
    Wait Until Element Is Visible      ${registro.Input_Telefone}      10
    Input Text                         ${registro.Input_Telefone}      ${dados_registro.Telefone}  
    Wait Until Element Is Visible      ${registro.Input_Email}         10
    Input Text                         ${registro.Input_Email}         ${dados_registro.Email}  
    Wait Until Element Is Visible      ${registro.Input_Senha}         10 
    Input Text                         ${registro.Input_Senha}         ${dados_registro.Senha}
    Wait Until Element Is Visible      ${registro.Button_Cookie}       10
    Click Element                      ${registro.Button_Cookie}          
    Wait Until Element Is Visible      ${registro.Button_Signup}       10 
    Sleep                              2s
    Run Keyword And Ignore Error       Click Element                      ${registro.Button_Signup}    
    Click Element                      ${registro.Button_Signup}
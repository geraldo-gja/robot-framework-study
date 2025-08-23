*** Settings ***
Resource          ../main.robot


*** Variables ***
&{login}
...     Input_EmailLogin=//input[@placeholder="Email"] 
...     Input_SenhaLogin=//input[@placeholder="Password"]
...     Button_Logar=//span[contains(text(),"Login")]
...     A_OpcaoLogin=(//a[@href="https://www.phptravels.net/login"])[2]


*** Keywords ***
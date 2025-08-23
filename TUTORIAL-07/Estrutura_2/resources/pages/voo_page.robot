*** Settings ***
Resource          ../main.robot


*** Variables ***
&{voo}
...     Input_IdaeVolta=//input[@id="round-trip"]
...     Input_Ida=//input[@id="autocomplete"]
...     Input_Volta=//input[@id="autocomplete2"] 
...     Input_DataIda=(//input[@id="departure"])[1]
...     Input_DataVolta=(//input[@id="return"])[1]
...     A_PassageirosDrop=//a[@href="#"]
...     Div_QtdPassageiros=(//div[@class="qtyInc"])[1]
...     Button_PesquisarVoo=//button[@id="flights-search"]


*** Keywords ***
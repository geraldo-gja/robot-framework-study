*** Settings ***
Resource          ../main.robot


*** Variables ***
&{visto}
...     Span_PaisOrigem=//span[@class="select2-selection select2-selection--single"]
...     Input_InformaPaisOrigem=//input[@aria-controls="select2-from_country-results"]


*** Keywords ***
*** Settings ***
Resource  ../main.robot

*** Variables ***
&{new_employee}
...  Input_FirstName=//input[@id="firstName"]
...  Input_MiddleName=//input[@id="middleName"]
...  Input_LastName=//input[@id="lastName"]
...  Photo_Input=//input[@id="photofile"]
...  Btn_Save=//input[@id="btnSave"]
...  Title_Registred_Employee=//h1[contains(text(),"Personal Details")]

*** Keywords ***
Então adiciono ${Quantidade} novos usuários
    FOR  ${i}  IN RANGE  ${Quantidade}
        Wait Until Element Is Visible  ${new_employee.Input_FirstName}
        ${PrimeiroNome}    FakerLibrary.FirstName
        ${NomeDoMeio}      FakerLibrary.FirstName
        ${UltimoNome}      FakerLibrary.FirstName
        Input Text         ${new_employee.Input_FirstName}       ${PrimeiroNome}
        Input Text         ${new_employee.Input_MiddleName}      ${NomeDoMeio}
        Input Text         ${new_employee.Input_LastName}        ${UltimoNome}
        Choose File        ${new_employee.Photo_Input}           ${employee.Profile_Photo}
        Click Element      ${new_employee.Btn_Save}
        Wait Until Element Is Visible   ${new_employee.Title_Registred_Employee}
        Page Should Contain             ${PrimeiroNome} ${NomeDoMeio} ${UltimoNome}
        E clico em "Add Employee"
    END 

          
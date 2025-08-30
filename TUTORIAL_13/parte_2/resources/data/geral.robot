*** Settings ***
Resource          ../main.robot


*** Variables ***
&{geral}
...     URL=https://www.phptravels.net/
...     Browser=chrome
#Client Credentials
...     Client_URL=https://app.phptravels.com/login
...     Client_User=user@phptravels.com
...     Client_Password=demouser
#Admin Credentials
...     Admin_URL=https://app.phptravels.com/api/admin
...     Admin_User=admin@phptravels.com
...     Admin_Password=demoadmin
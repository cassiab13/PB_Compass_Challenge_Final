*** Settings ***
Documentation        Elementos e ações na página de usuário logado

Resource             ../base.resource

*** Keywords ***
Logout user
    Click    css=.btn-logout >> text=Sair

Token should not exist in local storage
    ${token}=    Local Storage Get Item    token
    Log    Valor atual do token: ${token}
    Should Be Equal    ${token}    ${None}



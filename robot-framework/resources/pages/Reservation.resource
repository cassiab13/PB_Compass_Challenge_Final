*** Settings ***
Documentation        Elementos e ações na rota reservation

Resource             ../base.resource

*** Keywords ***
Go to reservation page
    Go To    ${BASE_URL}/reservations 


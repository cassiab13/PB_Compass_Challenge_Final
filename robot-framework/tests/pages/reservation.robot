*** Settings ***
Documentation            Cenários de testes da rota reservations
Resource                 ../../resources/base.resource
Library                  Collections
Test Setup               Start Session
Test Teardown            Take Screenshot

*** Test Cases ***
Should not go to reservation page
    [Tags]    RESERVE-001    CIN64
    Go to reservation page
    Verify Login Page

Should go to checkout
    [Tags]    RESERVE-001    CIN66
    
    Go to movie page
    Click on details movie
    Click on reserve seats
    Click on reset seats
    Select first available seat
    Click on payment
    Check checkout page
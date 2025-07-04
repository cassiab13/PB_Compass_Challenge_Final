*** Settings ***
Documentation            Cenários de testes da rota checkout
Resource                 ../../resources/base.resource
Library                  Collections
Test Setup               Start Session
Test Teardown            Take Screenshot

*** Test Cases ***
Should have selected seat
    [Tags]    RESERVE-002    CIN67

    Go to movie page
    Click on details movie
    Click on reserve seats
    Click on reset seats
    Select first available seat
    Click on payment
    Check seats

Should have total price
    [Tags]    RESERVE-002    CIN68

    Go to movie page
    Click on details movie
    Click on reserve seats
    Click on reset seats
    Select first available seat
    Click on payment
    Check total

Should select a payment method
    [Tags]    RESERVE-002     CIN69

    Go to movie page
    Click on details movie
    Click on reserve seats
    Click on reset seats
    Select first available seat
    Click on payment
    Click on credit card
    Check select method payment
    Click on debit card
    Check select method payment
    Click on pix
    Check select method payment
    Click on online transfer
    Check select method payment

Should confirm and display reservation and update seat status
    [Tags]    RESERVE-002    CIN70    CIN71    CIN72

    ${admin}    Create Dictionary    
    ...            email=admin@example.com 
    ...            password=admin123
    
    Go to login page
    Submit login    ${admin}
    Click on details movie
    Click on reserve seats
    Click on reset seats
    Select first available seat
    Click on payment
    Click on credit card
    Click on checkout
    Check status reservation
    Click on go back home page
    Click on details movie
    Click on reserve seats
    Check seat status equals occupied
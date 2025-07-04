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

Should check reservation details
    [Tags]    RESERVE-003    CIN76     CIN77    CIN78    CIN79    CIN81

    ${admin}    Create Dictionary    
    ...            email=admin@example.com 
    ...            password=admin123
    
    Go to login page
    Submit login    ${admin}
    Click on reservation
    Check reservation details
    Check posters 
    Check status reservation on reserve

Should check user without reservation
    [Tags]    RESERVE-003    CIN80

    ${user}        Create Dictionary    
    ...            name=User Without Reservation
    ...            email=userwithoutreservation@gmail.com
    ...            password=new123456
    
    Insert user into database    ${user}
    Go to login page
    Submit login    ${user}
    Click on reservation
    Check empty reservation
    Remove user from database    ${user}[email]
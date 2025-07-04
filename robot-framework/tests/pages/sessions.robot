*** Settings ***
Documentation            Cenários de testes da rota sessions
Resource                 ../../resources/base.resource
Library                  Collections
Test Setup               Start Session
Test Teardown            Take Screenshot

*** Test Cases ***
Each session-card should contain a session-time and session-theater
    [Tags]    SESSION-001    CIN54
    
    Go to movie page
    Click on details movie
    Verify session-time and session-theater

Should navigate to reservation seats
    [Tags]    SESSION-001    CIN55

    Go to movie page
    Click on details movie
    Click on reserve seats
    Wait For Elements State    css=.screen     visible    5s

Should select and modify status of a seat
    [Tags]    RESERVE-001    CIN60

    Go to movie page
    Click on details movie
    Click on reserve seats
    Click on reset seats
    Select first available seat

Should select seats and check price
    [Tags]    RESERVE-001    CIN61

    Go to movie page
    Click on details movie
    Click on reserve seats
    Click on reset seats
    Select three availables seats and check subtotal

Should check reservation link
    [Tags]    RESERVE-003    CIN75

    ${admin}    Create Dictionary    
    ...            email=admin@example.com 
    ...            password=admin123
    
    Go to login page
    Submit login    ${admin}
    Check my reservation link
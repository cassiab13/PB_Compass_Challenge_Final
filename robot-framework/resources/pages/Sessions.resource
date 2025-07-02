*** Settings ***
Documentation        Elementos e ações na página de sessions

Resource             ../base.resource

*** Keywords ***
Click on reserve seats
    Click    ${RESERVE_SEATS_BTN}

Click on reset seats
    Click    ${RESET_SEATS_BTN}

Click on payment
    Click    ${CONTINUAR_PGTO_BTN}
Verify session-time and session-theater
    ${total}=    Browser.Get Element Count    css=.session-card

    FOR    ${index}    IN    ${total}
        ${time_selector}=    Set Variable    .session-card >> nth=${index} >> .session-info >> .session-time 
        ${theater_selector}=    Set Variable    .session-card >> nth=${index} >> .session-info >> .session-theater 

        Wait For Elements State    ${time_selector}    visible    10s
        Wait For Elements State    ${theater_selector}    visible    10s
        
    END

Select first available seat
    Wait For Elements State    ${SELECT_AVAILABLE_SEATS} >> nth=0    visible    5s
    @{assentos}=    Browser.Get Elements    ${SELECT_AVAILABLE_SEATS}
    Browser.Click    ${assentos[0]}
    Sleep    1s
    ${classe}=    Browser.Get Attribute    ${RESERVED_SEATS}    class
    Should Contain    ${classe}    selected

Select three availables seats and check subtotal
    Wait For Elements State    ${SELECT_AVAILABLE_SEATS} >> nth=0    visible    5s
    @{assentos}=    Browser.Get Elements    ${SELECT_AVAILABLE_SEATS}
    Browser.Click    ${assentos[0]}
    Browser.Click    ${assentos[1]}
    Browser.Click    ${assentos[2]}
    Sleep    1s
    ${subtotal}=    Browser.Get Text    ${SUBTOTAL_LABEL}
    Sleep    1s
    Should Contain    ${subtotal}    R$ 60.00
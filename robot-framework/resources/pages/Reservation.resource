*** Settings ***
Documentation        Elementos e ações na rota reservation

Resource             ../base.resource

*** Keywords ***
Go to reservation page
    Go To    ${BASE_URL}/reservations 

Click on reservation
    Click    ${RESERVATIONS_LINK}
Check reservation details
    Wait For Elements State    ${RESERVATION_PAGE}    visible     5s

    ${card}=    Browser.Get Elements    ${RESERVATION_CARD}
    Should Not Be Empty    ${card}

    ${reservation_details}=    Browser.Get Elements    css=.reservation-details >> detail-item

    ${count}=    Browser.Get Element Count    css=.reservation-details
    FOR    ${i}    IN RANGE    ${count}
        ${span_count}=    Browser.Get Element Count    css=.reservation-details >> nth=${i} >> css=span
        Should Be True    ${span_count} > 0
    END

Check posters
    @{cards}=    Browser.Get Elements    ${MOVIE_INFO}
    ${total}=    Get Length    ${cards}

    Wait For Elements State    ${MOVIE_INFO} >> nth=0    visible    10s    strict=False

    ${poster}=    Set Variable    ${MOVIE_INFO} >> nth=0 >> img 
        
    Wait For Elements State    ${poster}    visible    10s

Check status reservation on reserve
    Wait For Elements State    ${RESERVATION_PAGE}    visible    5s

    ${has_status}=    Run Keyword And Return Status    Browser.Get Element   .status-badge >> nth=0
    Should Be True    ${has_status}    Este card não possui .status-badge

Check empty reservation
    Wait For Elements State    ${RESERVATION_PAGE}    visible    5s
    ${no_reservation}=    Browser.Get Text    ${EMPTY_RESERVATION}
    Should Be Equal    ${no_reservation}    Nenhuma reserva encontrada
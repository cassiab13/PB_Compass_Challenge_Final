*** Settings ***
Documentation        Elementos e ações na home page
Resource             ../base.resource
Library    XML

*** Keywords ***

Check duration and release data for each Film
   ${cards}=    Browser.Get Elements    css=.movie-meta

#    Wait For Elements State    css=.movie-meta >> nth=0     visible    5s

    FOR    ${card}    IN    @{cards}
        ${has_duration}=    Run Keyword And Return Status    Browser.Get Element    ${card} >> .movie-duration
        Should Be True    ${has_duration}    Este card não possui .movie-duration

        ${has_release}=    Run Keyword And Return Status    Browser.Get Element    ${card} >> .movie-release
        Should Be True    ${has_release}    Este card não possui .movie-release
    END

Check if movie card is clickable
    Click    ${VER_DETALHES_BTN}


Check my reservation link 
    Wait For Elements State    ${WELCOME_MESSAGE}    visible    5s
    ${my_reservation}=    Browser.Get Elements    ${MY_RESERVATIONS_LINK}
    Should Not Be Empty    ${my_reservation}
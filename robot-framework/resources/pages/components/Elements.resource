*** Settings ***
Documentation        Ações e elementos da página HTML
Resource             ../../base.resource
Library              Browser

*** Keywords ***
Element Should Be a Grid
    [Arguments]    ${selector}
    ${all_styles}=    Get Style       ${selector}
    ${display}=    Set Variable    ${all_styles}[display]
    Should Be Equal    ${display}    grid
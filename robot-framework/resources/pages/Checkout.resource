*** Settings ***
Documentation        Elementos e ações na rota checkout

Resource             ../base.resource

*** Keywords ***
Check checkout page
    Wait For Elements State    ${CHECKOUT_HEADER}    visible    5s
    ${selector}=    Get Text    ${CHECKOUT_HEADER}

    Should Be Equal    ${selector}    Finalizar Compra

Check seats 
    Wait For Elements State    ${CHECKOUT_HEADER}    visible    5s
    ${seat}=    Get Text    css=.seat-item
    Should Contain   ${seat}    Fileira A, Assento 1
Check total
    Wait For Elements State    ${CHECKOUT_HEADER}    visible    5s
    ${total}=    Get Text    .price-detail .price

    Should Be Equal    ${total}    R$ 20.00

Check select method payment    
    Wait For Elements State    ${CHECKOUT_HEADER}    visible    5s
    Sleep    1s
    ${classe}=    Browser.Get Attribute    ${PAYMENT_METHOD}    class
    Should Contain    ${classe}    selected

Click on credit card
    Click    ${CREDIT_CARD_METHOD}

Click on debit card
    Click    ${DEBIT_CARD_METHOD}

Click on pix
    Click    ${PIX_METHOD}

Click on online transfer
    Click    ${TRANSFER_METHOD}

Click on checkout
    Click    ${CHECKOUT_BTN}
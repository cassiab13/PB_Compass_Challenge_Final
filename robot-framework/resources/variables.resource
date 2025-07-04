*** Variables ***
${LOGIN_BUTTON}               css=button[type=submit] >> text=Entrar
${LOGIN_MESSAGE}              xpath=//p[contains(text(), 'Entre com suas credenciais para acessar sua conta')]

${LOGOUT_BUTTON}              css=.btn-logout

${RESERVATIONS_LINK}          css=a[href="/reservations"]

${PROFILE_LINK}               css=a[href="/profile"]
${PROFILE_MESSAGE}            xpath=//h1[contains(text(), 'Meu Perfil')]

${SUBMIT_BUTTON}              css=button[type=submit] >> text=Cadastrar
${SUBMIT_MESSAGE}             xpath=//p[contains(text(), 'Crie sua conta para reservar ingressos')]

${INPUT_NAME}                 css=#name
${INPUT_EMAIL}                css=#email

${SALVAR_ALTERACOES_BTN}      css=button[type=submit] >> text=Salvar alterações
${MODAL_OK_BUTTON}            css=.success-modal-overlay button.btn.btn-primary

${VER_DETALHES_BTN}           xpath=(//div[@class='movie-card']//a[contains(@class, 'btn-primary')]) >> nth=0

${RESERVE_SEATS_BTN}          css=.session-button >> nth=0
${RESET_SEATS_BTN}            css=.admin-actions button
${CONTINUAR_PGTO_BTN}         css=.action-buttons button

${SELECT_AVAILABLE_SEATS}     css=.row-seats .seat.available
${SELECTED_SEATS}             css=.row-seats .seat.selected >> nth=0
${RESERVED_SEATS}             css=.row-seats .seat.occupied >> nth=0

${SUBTOTAL_LABEL}             css=span.price

${CHECKOUT_HEADER}            css=.checkout-header > h1

${CREDIT_CARD_METHOD}         css=.payment-method span >> text=Cartão de crédito
${DEBIT_CARD_METHOD}          css=.payment-method span >> text=Cartão de débito
${PIX_METHOD}                 css=.payment-method span >> text=PIX 
${TRANSFER_METHOD}            css=.payment-method span >> text=Transferência Bancária
${PAYMENT_METHOD}             css=.payment-method.selected  
${CHECKOUT_BTN}               css=.btn-checkout
${CONFIRMATION_RESERVATION}   css=.confirmation-header > h1

${HOME_PAGE_BTN}              css=.btn-secondary

${MY_RESERVATIONS_LINK}       css=a[href="/reservations"]
${WELCOME_MESSAGE}            css=.home-container > h1
${RESERVATION_PAGE}           css=.reservations-header h1 >> text=Minhas Reservas
${RESERVATION_CARD}           css=.reservation-card

${MOVIE_INFO}                 css=.movie-info
${EMPTY_RESERVATION}          css=.empty-reservations > h3
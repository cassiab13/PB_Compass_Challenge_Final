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

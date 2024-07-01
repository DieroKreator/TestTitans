*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${btn_sacar}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.balance-list div.toolbar-wrapper.toolbar-wrapper_alert div.toolbar div.toolbar-wrap div.toolbar-actions > button.button.button-default:nth-child(4)
${solicitar_saque}    css=#swal2-title
${confirmar_saque}    css=body.swal2-shown.swal2-height-auto:nth-child(2) div.swal2-container.swal2-center.swal2-shown:nth-child(9) div.swal2-popup.swal2-modal.app-dialog.swal2-show div.swal2-actions > button.swal2-confirm.swal2-styled

*** Keywords ***

Clicar em "Sacar"
    Click Element    ${btn_sacar} 

Clicar em "Confirmar Saque"
    Click Button    ${confirmar_saque} 
*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${text_explicacao_saldo}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.balance-list div.toolbar-wrapper.toolbar-wrapper_alert div.helpbox div:nth-child(1) div.alert.alert-.alert-default.alert-flex div.alert-text > div:nth-child(1)

${total_sacado}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.balance-list section.card-infos-list div.card-infos-list-cards div.card-info-card.card-info-card-color-undefined.card-info-card-bg-undefined.has-tooltip:nth-child(1) > p.card-info-card-amount 
${a_receber}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.balance-list section.card-infos-list div.card-infos-list-cards div.card-info-card.card-info-card-color-warning.card-info-card-bg-undefined.has-tooltip:nth-child(2) > p.card-info-card-amount    
${pronto_saque}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.balance-list section.card-infos-list div.card-infos-list-cards div.card-info-card.card-info-card-color-success.card-info-card-bg-undefined.has-tooltip:nth-child(3) > p.card-info-card-amount   

${saldo_total}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.balance-list section.card-infos-list div.card-infos-list-cards div.card-info-card.card-info-card-color-success.card-info-card-bg-success.has-tooltip:nth-child(4) > p.card-info-card-amount 
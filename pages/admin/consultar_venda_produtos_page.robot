*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${msg_produtos}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div:nth-child(1) div.page div:nth-child(1) div.breadcrumb > div.breadcrumb-item.active:nth-child(3)
${btn_venda_de_produtos}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.sale-overview div.overview div.overview-group:nth-child(2) div.overview-group-items a.widget.widget.PURCHASE:nth-child(2) div.text > i.fal.fa-receipt
${text_explicacao_produtos}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.product-sales div.toolbar-wrapper.toolbar-wrapper_alert:nth-child(1) div.helpbox div:nth-child(1) div.alert.alert-.alert-default.alert-flex div.alert-text > div:nth-child(1)

${vendas_produtos_canceladas}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.product-sales section.card-infos-list:nth-child(2) div.card-infos-list-cards div.card-info-card.card-info-card-color-danger.card-info-card-bg-undefined:nth-child(2) > p.card-info-card-amount
${vendas_produtos_pendentes}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.product-sales section.card-infos-list:nth-child(2) div.card-infos-list-cards div.card-info-card.card-info-card-color-warning.card-info-card-bg-undefined:nth-child(3) > p.card-info-card-amount
${vendas_produtos_confirmadas}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.product-sales section.card-infos-list:nth-child(2) div.card-infos-list-cards div.card-info-card.card-info-card-color-success.card-info-card-bg-success:nth-child(4) > p.card-info-card-amount

${vendas_produtos_emitidas_total}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.product-sales section.card-infos-list:nth-child(2) div.card-infos-list-cards div.card-info-card.card-info-card-color-undefined.card-info-card-bg-undefined:nth-child(1) > p.card-info-card-amount

*** Keywords ***

Clicar em "Vendas de Produtos"
    Click Element    ${btn_venda_de_produtos}
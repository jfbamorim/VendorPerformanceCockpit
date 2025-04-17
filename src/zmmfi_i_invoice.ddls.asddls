@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Invoice - Basic'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZMMFI_I_INVOICE as select from zmmfit_invoice
{
    key invoice_id as InvoiceId,
    key item_id as ItemId,
    invoice_date as InvoiceDate,
    amount as Amount,
    currency as Currency,
    is_matched as IsMatched,
    comments as Comments
}

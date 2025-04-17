@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase order header - Basic'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zmmfi_i_purchord as select from zmmfit_purchord
{
    key po_id as PoId,
    purchase_date as PurchaseDate,
    vendor_id as VendorId,
    buyer_name as BuyerName,
    total_amount as TotalAmount,
    currency as Currency,
    status as Status
}

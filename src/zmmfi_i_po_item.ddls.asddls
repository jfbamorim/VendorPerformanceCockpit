@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase order item - Basic'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZMMFI_I_PO_ITEM as select from zmmfit_po_item
{
    key po_id as PoId,
    key item_id as ItemId,
    product_id as ProductId,
    description as Description,
    quantity_ordered as QuantityOrdered,
    unit as Unit,
    unit_price as UnitPrice,
    currency as Currency,
    vendor_id as VendorId,
    expected_delivery_date as ExpectedDeliveryDate
}

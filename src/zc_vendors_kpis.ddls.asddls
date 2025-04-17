@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vendors KPI''s - Consumption'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zc_vendors_kpis as select from ZMMFI_I_PO_ITEM 
  association [0..1] to zmmfi_i_purchord as _poheader on $projection.PoId = _poheader.PoId
  association [1..*] to ZMMFI_I_GOODS_RCP as _goods on $projection.ItemId = _goods.ItemId
{
    key ZMMFI_I_PO_ITEM.PoId,
    key ZMMFI_I_PO_ITEM.ItemId,
    ZMMFI_I_PO_ITEM.ProductId,
    ZMMFI_I_PO_ITEM.Description,
    ZMMFI_I_PO_ITEM.QuantityOrdered,
    ZMMFI_I_PO_ITEM.Unit,
    ZMMFI_I_PO_ITEM.UnitPrice,
    ZMMFI_I_PO_ITEM.Currency,
    ZMMFI_I_PO_ITEM.VendorId,
    ZMMFI_I_PO_ITEM.ExpectedDeliveryDate,
    
    _poheader,
    _goods
}

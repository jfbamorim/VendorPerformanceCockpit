@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Goods Receipt - Basic'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZMMFI_I_GOODS_RCP as select from zmmfit_goods_rcp
{
    key gr_id as GrId,
    item_id as ItemId,
    delivery_date as DeliveryDate,
    quantity_received as QuantityReceived,
    unit as Unit,
    damaged as Damaged,
    comments as Comments
}

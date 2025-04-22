@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vendors KPI''s - Consumption'
@Metadata.ignorePropagatedAnnotations: false
@VDM.viewType: #CONSUMPTION
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_VENDOR_KPIS as select from zi_vendor_agg_data
{
    key VendorID,
    TotalPurchaseOrders,
    OnTimeDeliveryRate,
    cast(daysBetween as abap.dec(5,2)) as DaysBetween,
    ComplaintCount,
    AverageRating
}

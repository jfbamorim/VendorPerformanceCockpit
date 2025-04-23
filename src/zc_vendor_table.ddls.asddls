@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vendor Performance Table'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@UI.headerInfo: {
  typeName: 'Vendor',
  typeNamePlural: 'Vendors',
  title: { type: #STANDARD, value: 'VendorName' }
}
define view entity ZC_VENDOR_TABLE as select from zmmfi_i_vendor as vendor
    left outer join ZC_VENDOR_KPIS as kpi
        on vendor.vendorid = kpi.VendorID
{
  @UI.lineItem: [{ position: 10 }]
  @UI.selectionField: [{ position: 10 }]
  vendor.vendorid,

  @UI.lineItem: [{ position: 20 }]
  vendor.name         as VendorName,

  @UI.lineItem: [{ position: 30 }]
  @UI.selectionField: [{ position: 20 }]
  vendor.country,

  @UI.lineItem: [{ position: 40 }]
  kpi.TotalPurchaseOrders,

  @UI.lineItem: [{ position: 50 }]
  kpi.OnTimeDeliveryRate,

  @UI.lineItem: [{ position: 60 }]
  kpi.DaysBetween as AvgDelayDays,

  @UI.lineItem: [{ position: 70 }]
  kpi.ComplaintCount,

  @UI.lineItem: [{ position: 80 }]
  kpi.AverageRating
}

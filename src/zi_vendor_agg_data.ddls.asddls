@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vendor Aggregated Data'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_vendor_agg_data as select from zmmfi_i_vendor as vendor
  left outer join zmmfi_i_purchord as po on vendor.vendorid = po.VendorId
  left outer join ZMMFI_I_PO_ITEM as item on item.PoId = po.PoId
  left outer join ZMMFI_I_GOODS_RCP as goods on goods.ItemId = item.ItemId
  left outer join ZMMFI_I_VENDOR_EV as eval on eval.VendorId = vendor.vendorid
  left outer join ZMMFI_I_COMPLAINT as comp on comp.VendorId = vendor.vendorid
{ 
      key vendor.vendorid as VendorID,
      count(distinct po.PoId) as TotalPurchaseOrders,
      cast( case when count(distinct goods.GrId) = 0 then 0 
            else ( cast( sum( case when goods.DeliveryDate <=  item.ExpectedDeliveryDate then 1 else 0 end ) as abap.dec(5,2) ) 
            / cast(count(distinct goods.GrId) as abap.dec(12,2))) * 100 end as abap.dec(5,2) ) as OnTimeDeliveryRate,
      avg( case when goods.DeliveryDate > item.ExpectedDeliveryDate then dats_days_between( goods.DeliveryDate, item.ExpectedDeliveryDate ) else 0 end as abap.fltp ) as daysBetween,
      count(distinct comp.ComplaintId)               as ComplaintCount,
      avg( eval.OverallScore as abap.dec(5,2) ) as AverageRating
      
}
group by vendor.vendorid, goods.DeliveryDate, item.ExpectedDeliveryDate

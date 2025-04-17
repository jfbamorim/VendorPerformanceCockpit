@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vendor Evaluation - Basic'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZMMFI_I_VENDOR_EV as select from zmmfit_vendor_ev
{
    key eval_id as EvalId,
    period as Period,
    on_time_delivery_rate as OnTimeDeliveryRate,
    average_delay_days as AverageDelayDays,
    complaint_count as ComplaintCount,
    price_variance as PriceVariance,
    unit as Unit,
    overall_score as OverallScore,
    comments as Comments
}

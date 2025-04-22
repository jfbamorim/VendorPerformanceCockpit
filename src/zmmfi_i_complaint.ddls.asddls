@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Complaint - Basic'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZMMFI_I_COMPLAINT as select from zmmfi_complaint
{
    key complaint_id as ComplaintId,
    item_id as ItemId,
    vendor_id as VendorId,
    complaint_date as ComplaintDate,
    complaint_type as ComplaintType,
    description as Description,
    status as Status,
    severity as Severity,
    resolution_notes as ResolutionNotes
}

@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vendors Filters - Consumption'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_VENDORS_FILTERS as select from zmmfi_i_vendor
{
    key vendorid,
    country,
    category,
    substring(registrationdate,5 ,2) as registrationdate,
    createdat,
    createdby
}

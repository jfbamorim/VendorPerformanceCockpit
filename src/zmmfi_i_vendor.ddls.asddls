@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'vendor - basic'
@Metadata.ignorePropagatedAnnotations: false
define view entity zmmfi_i_vendor as select from zmmfit_vendor
{
    key vendor_id as vendorid,
    name as name,
    email as email,
    city as city,
    country as country,
    category as category,
    is_certified as iscertified,
    registration_date as registrationdate,
    initial_rating as initialrating,
    active as active,
    created_at as createdat,
    created_by as createdby
}

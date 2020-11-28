@AbapCatalog.sqlViewName: 'ZG_RAP_500_I_AGT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agency Interface View RAP Demo'
define view ZTRAP_500_I_AGENCYT as select from ztrap_500_t_agen {
@EndUserText.label: 'Agency Id'
key agency_id,
@Semantics.text: true
@EndUserText.label: 'Agency Name'
agency_name as Agency_Name,
@EndUserText.label: 'Address'
street as Street,
@EndUserText.label: 'City'
city as City,
@EndUserText.label: 'Postal Code'
postal_code as PostalCode,
@EndUserText.label: 'State'
state as State,
@EndUserText.label: 'Country'
country as Country,
@EndUserText.label: 'Email'
email as Email,
@EndUserText.label: 'Website'
web_address as WebAddress
    
}

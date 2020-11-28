@AbapCatalog.sqlViewName: 'ZG_RAP_500_I_CUS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Interface View'
define view ZRAP_500_I_CUSTOMER as select from zrap_500_t_cust {

@EndUserText.label: 'Customer Id'
key customer_id as CustomerId,
@Semantics.text: true
@EndUserText.label: 'First Name'
first_name as FirstName,
@EndUserText.label: 'Last Name'
last_name as LastName,
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
@EndUserText.label: 'Phone'
phone as Phone,
@EndUserText.label: 'Email'
email as Email
    
}

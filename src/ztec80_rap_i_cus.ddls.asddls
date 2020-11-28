@AbapCatalog.sqlViewName: 'ZTEC80RAP_CUST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Interface View'
define view ZTEC80_RAP_I_CUS as select from zrap_500_t_cust {

@EndUserText.label: 'Customer Id'
key customer_id as Customer_Id,
@Semantics.text: true
@EndUserText.label: 'First Name'
first_name as First_Name,
@EndUserText.label: 'Last Name'
last_name as Last_Name,
@EndUserText.label: 'Address'
street as Street,
@EndUserText.label: 'City'
city as City,
@EndUserText.label: 'Postal Code'
postal_code as Postal_Code,
@EndUserText.label: 'State'
state as State,
@EndUserText.label: 'Country'
country as Country,
@EndUserText.label: 'Phone'
phone as Phone,
@EndUserText.label: 'Email'
email as Email
    
}

@AbapCatalog.sqlViewName: 'ZG_RAP_500_I_CST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Interface View'
define view ZTRAP_500_I_CUSTOMERT as select from ztrap_500_t_cust {

@EndUserText.label: 'Customer Id'
@UI.lineItem: [{label: 'CusId',position: 10}]
key customer_id as Customer_Id,
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

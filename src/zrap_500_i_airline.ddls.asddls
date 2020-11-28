@AbapCatalog.sqlViewName: 'ZG_RAP_500_I_AIR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Airline Interface View RAP Demo'
define view ZRAP_500_I_AIRLINE as select from zrap_500_t_airli {
key airline_id as AirlineId,
airline_text as AirlineText
    
}

@AbapCatalog.sqlViewName: 'ZG_RAP_500_I_FLI'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flight Interface view for RAP'
define view ZRAP_500_I_FLIGHT as select from zrap_500_t_fligt {

key flight_number as FlightNumber,
flight_name as FlightName,
airline_number as AirlineNumber,
flight_date as FlightDate,
flight_price as FlightPrice,
currency_code as CurrencyCode
    
}

@AbapCatalog.sqlViewName: 'ZG_RAP_500_I_FLG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flight Interface view for RAP'
define view ZTRAP_500_I_FLIGHT as select from ztrap_500_t_flg {
@UI.hidden: true
@UI.lineItem: [{position: 10}]
@EndUserText.label: 'Flight Number'
key flight_number as Flight_Number,
@UI.lineItem: [{position: 20}]
@EndUserText.label: 'Flight Name'
flight_name as Flight_Name,
@UI.lineItem: [{position: 30}]
@EndUserText.label: 'Airline'
airline_number as Airline_id,
@UI.lineItem: [{position: 40}]
@EndUserText.label: 'Flight Date'
flight_date as Flight_Date,
@UI.lineItem: [{position: 50}]
@EndUserText.label: 'Flight Price'
flight_price as Flight_Price,
@UI.lineItem: [{position: 60}]
@EndUserText.label: 'Currency Code'
currency_code as Currency_Code
    
}

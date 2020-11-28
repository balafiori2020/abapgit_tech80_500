@AbapCatalog.sqlViewName: 'ZG_TRAP_500_I_BK'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Interface View RAP Demo'
define view ZTRAP_500_I_BOOK as select from ztrap_500_t_book {
@EndUserText.label: 'Booking Id'
@UI.lineItem: [{label: 'Booking Id',position: 10}]
key booking_id as Booking_Id,

key travel_id as Travel_Id,
@EndUserText.label: 'Booking Description'
@UI.lineItem: [{label: 'Booking Description',position: 20}]
booking_desc as Booking_Desc,
@EndUserText.label: 'Customer Id'
@UI.lineItem: [{label: 'Customer Id',position: 30}]
customer_id as Customer_Id,
@EndUserText.label: 'Airline Id'
@UI.lineItem: [{label: 'Airline Id',position: 40}]
airline_id as Airline_Id,
@EndUserText.label: 'Flight No.'
@UI.lineItem: [{label: 'Flight No.',position: 50}]
flight_number as Flight_Number,
@EndUserText.label: 'Flight Date'
@UI.lineItem: [{label: 'Flight Date',position: 60}]
flight_date as Flight_Date,
@EndUserText.label: 'Flight Price'
@UI.lineItem: [{label: 'Flight Price',position: 70}]
@Semantics.amount.currencyCode: 'Currency_Code'
flight_price as Flight_Price,
@Semantics.currencyCode: true
currency_code as Currency_Code,
@EndUserText.label: 'Booking Status'
@UI.lineItem: [{label: 'Booking Status',position: 80}]
booking_status as Booking_Status
    
}

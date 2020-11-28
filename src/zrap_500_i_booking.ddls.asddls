@AbapCatalog.sqlViewName: 'ZG_RAP_500_I_BOO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Interface View for RAP Demo'
define view ZRAP_500_I_BOOKING as select from zrap_500_t_book {
key booking_id as BookingId,
key travel_id as TravelId,
booking_desc as BookingDesc,
customer_id as CustomerId,
airline_id as AirlineId,
flight_number as FlightNumber,
flight_date as FlightDate,
flight_price as FlightPrice,
currency_code as CurrencyCode,
booking_status as BookingStatus
    
}

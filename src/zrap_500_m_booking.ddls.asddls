@AbapCatalog.sqlViewName: 'ZRAP_500_M_BOOK'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Managed Booking'
define view ZRAP_500_M_BOOKING as select from zrap_500_t_book 
association to parent ZRAP_500_C_DIS_TRAVEL as _Travel on $projection.TravelId = _Travel.TravelId
association [1..1] to ZRAP_500_I_CUSTOMER as _Customer on $projection.CustomerId = _Customer.CustomerId 
association [1..1] to ZRAP_500_I_AIRLINE as _Airline on $projection.AirlineId = _Airline.AirlineId
association [1..1] to I_Currency as _Currency on $projection.CurrencyCode = _Currency.Currency
association [1..1] to ZRAP_500_I_FLIGHT  as _Flight on $projection.FlightNumber = _Flight.FlightNumber and 
 $projection.AirlineId = _Flight.AirlineNumber 
{
key zrap_500_t_book.booking_id as BookingId,
key zrap_500_t_book.travel_id as TravelId,
zrap_500_t_book.booking_desc as BookingDesc,
zrap_500_t_book.customer_id as CustomerId,
zrap_500_t_book.airline_id as AirlineId,
zrap_500_t_book.flight_number as FlightNumber,
zrap_500_t_book.flight_date as FlightDate,
zrap_500_t_book.flight_price as FlightPrice,
zrap_500_t_book.currency_code as CurrencyCode,
zrap_500_t_book.booking_status as BookingStatus,
_Travel,
_Airline,
_Flight,
_Customer,
_Currency
    
}

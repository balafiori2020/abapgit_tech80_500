@AbapCatalog.sqlViewName: 'ZTRAP_500_M_BOO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Managed Booking'
define  view ZTEC80_M_BOOKING as select from ztrap_500_t_book 
association to parent ZTEC80_M_TRAVEL as _Travel on $projection.Travel_Id = _Travel.Travel_Id
association [1..1] to ZTRAP_500_I_CUSTOMERT as _Customer on $projection.Customer_Id = _Customer.Customer_Id 
association [1..1] to ZTRAP_500_I_AIRLINE as _Airline on $projection.Airline_Id = _Airline.Airline_Id
association [1..1] to I_Currency as _Currency on $projection.Currency_Code = _Currency.Currency
association [1..1] to ZTRAP_500_I_FLIGHT  as _Flight on $projection.Flight_Number = _Flight.Flight_Number and 
 $projection.Airline_Id = _Flight.Airline_id  
{
key ztrap_500_t_book.booking_id as Booking_Id,
key ztrap_500_t_book.travel_id as Travel_Id,
ztrap_500_t_book.booking_desc as Booking_Desc,
ztrap_500_t_book.customer_id as Customer_Id,
ztrap_500_t_book.airline_id as Airline_Id,
ztrap_500_t_book.flight_number as Flight_Number,
ztrap_500_t_book.flight_date as Flight_Date,
ztrap_500_t_book.flight_price as Flight_Price,
ztrap_500_t_book.currency_code as Currency_Code,
ztrap_500_t_book.booking_status as Booking_Status,
_Travel,
_Airline,
_Flight,
_Currency,
_Customer

    
}

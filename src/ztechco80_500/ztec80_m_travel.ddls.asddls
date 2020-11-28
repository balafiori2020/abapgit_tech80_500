@AbapCatalog.sqlViewName: 'ZTEC80_TRAVEL_C'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel view Composite'
define root view ZTEC80_M_TRAVEL as select from ztrap_500_t_trav
composition [0..*] of ZTEC80_M_BOOKING as _Bookings 
 association[1] to ZTRAP_500_I_AGENCYT as _Agency on $projection.agency_id = _Agency.agency_id
 association[1] to ZTRAP_500_I_CUSTOMERT as _Customer on $projection.Customer_Id = _Customer.Customer_Id
 association[1] to I_Currency as _Currency on $projection.Currency_code = _Currency.Currency
 
 
 {
 key ztrap_500_t_trav.travel_id as Travel_Id,
 ztrap_500_t_trav.tarvel_desc as Tarvel_Desc,
 ztrap_500_t_trav.agency_id as agency_id,
 ztrap_500_t_trav.customer_id as Customer_Id,
 ztrap_500_t_trav.begin_date as Begin_Date,
 ztrap_500_t_trav.end_date as End_Date,
 @Semantics.amount.currencyCode: 'Currency_code'
 ztrap_500_t_trav.booking_fee as Booking_Fee,
  @Semantics.amount.currencyCode: 'Currency_code'
 ztrap_500_t_trav.travel_cost as Travel_Cost,
  @Semantics.currencyCode: true
 ztrap_500_t_trav.currency_code as Currency_code,
 ztrap_500_t_trav.status as Status,
 _Customer,
 _Agency,
 _Currency,
 _Bookings 
    
}

@AbapCatalog.sqlViewName: 'ZTEST_TRAVEL_C'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel view Composite'
define root view ZTEST_M_TRAVEL as select from zrap_500_t_trave
 association[1] to ZRAP_500_I_AGENCY as _Agency on $projection.AgencyId = _Agency.AgencyId
 association[1] to ZRAP_500_I_CUSTOMER as _Customer on $projection.CustomerId = _Customer.CustomerId
 
 
 {
 key zrap_500_t_trave.travel_id as TravelId,
 zrap_500_t_trave.tarvel_desc as TarvelDesc,
 zrap_500_t_trave.agency_id as AgencyId,
 zrap_500_t_trave.customer_id as CustomerId,
 zrap_500_t_trave.begin_date as BeginDate,
 zrap_500_t_trave.end_date as EndDate,
 @Semantics.amount.currencyCode: 'CurrencyCode'
 zrap_500_t_trave.booking_fee as BookingFee,
  @Semantics.amount.currencyCode: 'CurrencyCode'
 zrap_500_t_trave.travel_cost as TravelCost,
  @Semantics.currencyCode: true
 zrap_500_t_trave.currency_code as CurrencyCode,
 zrap_500_t_trave.status as Status,
 _Customer,
 _Agency
    
}

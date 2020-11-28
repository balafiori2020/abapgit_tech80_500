@AbapCatalog.sqlViewName: 'ZG_TRAP_500_I_AL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Airline Interface View RAP Demo'
define view ZTRAP_500_I_AIRLINE as select from ztrap_500_t_airl {
key airline_id as Airline_Id,
airline_text as Airline_Text
    
}

*&---------------------------------------------------------------------*
*& Report ZRAP_500_TEST_PROGRAM
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZRAP_500_TEST_PROGRAM.


DATA:LS_TRAVEL TYPE zrap_500_t_trave.

LS_TRAVEL-agency_id = 'A001'.
LS_TRAVEL-begin_date = '20190202'.
LS_TRAVEL-booking_fee = '123'.
LS_TRAVEL-currency_code = 'INR'.
LS_TRAVEL-customer_id = 'C001'.
LS_TRAVEL-end_date = '20190505'.
LS_TRAVEL-tarvel_desc = 'DHAKJSH'.
LS_TRAVEL-travel_cost = '5000'.
LS_TRAVEL-travel_id = '12'.

INSERT  ZRAP_500_T_TRAVE FROM ls_travel.

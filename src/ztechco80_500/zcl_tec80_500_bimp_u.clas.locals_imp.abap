CLASS lhc_ZTEC80_U_TRAVEL DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE ZTEC80_U_TRAVEL.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE ZTEC80_U_TRAVEL.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE ZTEC80_U_TRAVEL.

    METHODS read FOR READ
      IMPORTING keys FOR READ ZTEC80_U_TRAVEL RESULT result.
*      methods map_data importing im_data type ZTEC80_U_TRAVEL
*      RETURNING VALUE ( r_output_data) type ztrap_500_t_trav.

ENDCLASS.

CLASS lhc_ZTEC80_U_TRAVEL IMPLEMENTATION.

METHOD create.
*  data:lt_book type table of ZTRAP_500_T_BOOK.
*SELECT * from ZRAP_500_T_book INTO CORRESPONDING FIELDS OF table lt_book.
*if lt_book is not initial.
*insert ZTRAP_500_T_BOOK from TABLE lt_book.
*ENDIF.
  data:ls_travel TYPE ztrap_500_t_trav.
  loop at entities ASSIGNING FIELD-SYMBOL(<fs_travel_create>).
  ls_travel-travel_id = <fs_travel_create>-Travel_Id.
  ls_travel-tarvel_desc = <fs_travel_create>-Tarvel_Desc.
  ls_travel-travel_cost = <fs_travel_create>-Travel_Cost.
  ls_travel-agency_id = <fs_travel_create>-Agency_Id.
  ls_travel-customer_id = <fs_travel_create>-Customer_Id.
  ls_travel-begin_date = <fs_travel_create>-Begin_Date.
  ls_travel-end_date = <fs_travel_create>-End_Date.
  ls_travel-booking_fee = <fs_travel_create>-Booking_Fee.
  ls_travel-status = <fs_travel_create>-status.
  ls_travel-currency_code = <fs_travel_create>-Currency_Code.
  INSERT  ztrap_500_t_trav FROM ls_travel.
  ENDLOOP.

  ENDMETHOD.

  METHOD update.
  data:ls_travel TYPE ztrap_500_t_trav.
       data:ls_travel_x type ztrap_500_st_travelx.
            data:lv_string type string.
                 data:lv_string_am type string.
                 data:lv_amount type ztrap_500_t_trav-booking_fee.

  loop at entities ASSIGNING FIELD-SYMBOL(<fs_travel_update>).

   ls_travel_x-travel_id_x = xsdbool( <fs_travel_update>-%control-Travel_Id = cl_abap_behv=>flag_changed ).
   ls_travel_x-tarvel_desc_x = xsdbool( <fs_travel_update>-%control-Tarvel_Desc = cl_abap_behv=>flag_changed ).
   ls_travel_x-travel_cost_x = xsdbool( <fs_travel_update>-%control-Travel_Cost = cl_abap_behv=>flag_changed ).
   ls_travel_x-agency_id_x = xsdbool( <fs_travel_update>-%control-Agency_Id = cl_abap_behv=>flag_changed ).
   ls_travel_x-customer_id_x = xsdbool( <fs_travel_update>-%control-Customer_Id = cl_abap_behv=>flag_changed ).
   ls_travel_x-begin_date_x = xsdbool( <fs_travel_update>-%control-Begin_Date = cl_abap_behv=>flag_changed ).
   ls_travel_x-end_date_x = xsdbool( <fs_travel_update>-%control-End_Date = cl_abap_behv=>flag_changed ).
   ls_travel_x-booking_fee_x = xsdbool( <fs_travel_update>-%control-Booking_Fee = cl_abap_behv=>flag_changed ).
   ls_travel_x-status_x = xsdbool( <fs_travel_update>-%control-status = cl_abap_behv=>flag_changed ).
   ls_travel_x-currency_code_x = xsdbool( <fs_travel_update>-%control-Currency_Code = cl_abap_behv=>flag_changed ).

*Update Code

  ls_travel-travel_id = <fs_travel_update>-Travel_Id.
  ls_travel-tarvel_desc = <fs_travel_update>-Tarvel_Desc.
  ls_travel-travel_cost = <fs_travel_update>-Travel_Cost.
  ls_travel-agency_id = <fs_travel_update>-Agency_Id.
  ls_travel-customer_id = <fs_travel_update>-Customer_Id.
  ls_travel-begin_date = <fs_travel_update>-Begin_Date.
  ls_travel-end_date = <fs_travel_update>-End_Date.
  ls_travel-booking_fee = <fs_travel_update>-Booking_Fee.
  ls_travel-status = <fs_travel_update>-status.
  ls_travel-currency_code = <fs_travel_update>-Currency_Code.


data(lv_idx) = sy-tabix.

if ls_travel_x-status_x is not initial.

CONCATENATE 'status = ' '''' ls_travel-status '''' INTO lv_string.

endif.
if ls_travel_x-tarvel_desc_x is not initial.
if lv_string is not initial.
CONCATENATE lv_string ',' 'tarvel_desc = ' '''' ls_travel-tarvel_desc '''' INTO lv_string.
else.
CONCATENATE  'tarvel_desc = ' '''' ls_travel-tarvel_desc '''' INTO lv_string.
endif.
endif.
if ls_travel_x-agency_id_x is not initial.
if lv_string is not initial.
CONCATENATE lv_string ',' 'agency_id = ' '''' ls_travel-agency_id '''' INTO lv_string.
else.
CONCATENATE  'agency_id = ' '''' ls_travel-agency_id '''' INTO lv_string.
endif.
endif.

if ls_travel_x-begin_date_x is not initial.
if lv_string is not initial.
CONCATENATE lv_string ',' 'begin_date = ' '''' ls_travel-begin_date '''' INTO lv_string.
else.
CONCATENATE  'begin_date = ' '''' ls_travel-begin_date '''' INTO lv_string.
endif.
endif.

if ls_travel_x-customer_id_x is not initial.
if lv_string is not initial.
CONCATENATE lv_string ',' 'customer_id = ' '''' ls_travel-customer_id '''' INTO lv_string.
else.
CONCATENATE  'customer_id = ' '''' ls_travel-customer_id '''' INTO lv_string.
endif.
endif.

if ls_travel_x-end_date_x is not initial.
if lv_string is not initial.
CONCATENATE lv_string ',' 'end_date = ' '''' ls_travel-end_date '''' INTO lv_string.
else.
CONCATENATE  'end_date = ' '''' ls_travel-end_date '''' INTO lv_string.
endif.
endif.

if ls_travel_x-currency_code_x is not initial.
if lv_string is not initial.
CONCATENATE lv_string ',' 'currency_code = ' '''' ls_travel-currency_code '''' INTO lv_string.
else.
CONCATENATE  'currency_code = ' '''' ls_travel-currency_code '''' INTO lv_string.
endif.
endif.

if ls_travel_x-booking_fee_x is not initial.
if lv_string is not initial.
lv_string_am  = ls_travel-booking_fee.
CONCATENATE lv_string ',' 'booking_fee = '  '''' lv_string_am ''''   INTO lv_string.
else.
CONCATENATE  'booking_fee = '  '''' lv_string_am ''''  INTO lv_string.

endif.
clear:lv_string_am.
endif.

if ls_travel_x-travel_cost_x is not initial.
if lv_string is not initial.
lv_string_am  = ls_travel-travel_cost.
CONCATENATE lv_string ',' 'travel_cost = '  '''' lv_string_am ''''   INTO lv_string.
else.
CONCATENATE  'travel_cost = '  '''' lv_string_am ''''  INTO lv_string.

endif.
clear:lv_string_am.
endif.


BREAK-POINT.
 UPDATE ztrap_500_t_trav

          SET (lv_string)
*          SET booking_fee = '756.00'
*          travel_cost = @ls_travel-travel_cost,
*          tarvel_ = @ls_travel-tarvel_desc,
*          tarvel_desc = @ls_travel-tarvel_desc,
*          tarvel_desc = @ls_travel-tarvel_desc,

           WHERE travel_id = @ls_travel-travel_id.
  ENDLOOP.
  ENDMETHOD.







  METHOD delete.
  data:lv_travel_id TYPE ztrap_500_t_trav-travel_id.
        data:ls_travel TYPE ztrap_500_t_trav.
  loop at keys ASSIGNING FIELD-SYMBOL(<fs_travel_delete>).
  lv_travel_id = <fs_travel_delete>-Travel_Id.
delete  FROM ztrap_500_t_trav WHERE travel_id = lv_travel_id.

ENDLOOP.
  ENDMETHOD.



  METHOD read.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZTEC80_U_TRAVEL DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

ENDCLASS.

CLASS lsc_ZTEC80_U_TRAVEL IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

ENDCLASS.

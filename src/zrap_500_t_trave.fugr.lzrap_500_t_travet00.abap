*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 11.11.2020 at 14:14:43
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZRAP_500_T_TRAVE................................*
DATA:  BEGIN OF STATUS_ZRAP_500_T_TRAVE              .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZRAP_500_T_TRAVE              .
CONTROLS: TCTRL_ZRAP_500_T_TRAVE
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZRAP_500_T_TRAVE              .
TABLES: ZRAP_500_T_TRAVE               .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .

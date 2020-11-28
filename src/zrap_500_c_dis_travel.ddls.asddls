@AbapCatalog.sqlViewName: 'ZG_RAP_500_C_D_T'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Display Only App for RAP Demo'
@OData.publish: true
@Search.searchable: true
        @UI.headerInfo:{
typeName: 'Travel',
typeNamePlural: 'Travels',
title:{label: 'Travel Id',type: #STANDARD,value: 'TravelId'},
description:{type: #STANDARD,value: 'TarvelDesc'},
imageUrl: 'https://d1nxzqpcg2bym0.cloudfront.net/itunes_connect/520108232/2b02b44e-3f06-11e8-b141-0b7ec38e80c7/128x128'

}
define root view ZRAP_500_C_DIS_TRAVEL as select from zrap_500_t_trave

composition [1..*] of  ZRAP_500_M_BOOKING as _Bookings 
association [1] to ZRAP_500_I_CUSTOMER as _Customer on $projection.CustomerId = _Customer.CustomerId 
association [1] to ZRAP_500_I_AGENCY as _Agency on $projection.AgencyId = _Agency.AgencyId
association [1] to I_Currency as _Currency on $projection.CurrencyCode = _Currency.Currency
{
@UI.facet: [{purpose: #STANDARD,type: #IDENTIFICATION_REFERENCE,
label: 'Travel Details' ,position: 10},
{
purpose: #STANDARD,
type: #LINEITEM_REFERENCE,
label: 'bookings' ,
position: 20,
targetElement: '_Bookings'
}

]

@UI.selectionField: [{position: 10 }]
@UI.lineItem: [{position: 10}]
@Search.defaultSearchElement: true
@EndUserText.label: 'Travel Id'
@UI.identification: [{position: 10 }]

key zrap_500_t_trave.travel_id as TravelId,

@UI.lineItem: [{position: 20 }]
@Search.defaultSearchElement: true
@Search.fuzzinessThreshold: 0.7
@UI.identification: [{position: 20 }]
zrap_500_t_trave.tarvel_desc as TarvelDesc,

@UI.selectionField: [{position: 20 }]
@UI.lineItem: [{position: 30 }]
@UI.identification: [{position: 30 }]
@Search.defaultSearchElement: true
@EndUserText.label: 'Agency Id'
//@ObjectModel.text.association: '_Agency'
@Consumption.valueHelpDefinition: [{entity:{name: 'ZRAP_500_I_AGENCY',element: 'AgencyId'} }]
zrap_500_t_trave.agency_id as AgencyId,

@UI.selectionField: [{position: 30 }]
@UI.lineItem: [{position: 40 }]
@UI.identification: [{position: 40 }]
@Search.defaultSearchElement: true
//@ObjectModel.text.association: '_Customer'
@EndUserText.label: 'Customer Id'
@Consumption.valueHelpDefinition: [{entity:{name: 'ZRAP_500_I_CUSTOMER',element: 'CustomerId'} }]
zrap_500_t_trave.customer_id as CustomerId,

@UI.lineItem: [{position: 50 }]
@UI.identification: [{position: 50 }]
@EndUserText.label: 'Begin Date'
zrap_500_t_trave.begin_date as BeginDate,

@UI.identification: [{position: 60 }]
@EndUserText.label: 'End Date'
zrap_500_t_trave.end_date as EndDate,

zrap_500_t_trave.booking_fee as BookingFee,

@UI.lineItem: [{position: 60 }]
@UI.identification: [{position: 70 }]
@Semantics.amount.currencyCode: 'CurrencyCode'
@EndUserText.label: 'Travel Cost'
zrap_500_t_trave.travel_cost as TravelCost,

@Semantics.currencyCode: true
@UI.selectionField: [{position: 40 }]
@Consumption.valueHelpDefinition: [{entity:{name: 'I_Currency',element: 'Currency'} }]
zrap_500_t_trave.currency_code as CurrencyCode,

@UI.lineItem: [{position: 70 ,criticality: 'StatusCri' }]
@UI.identification: [{position: 80 }]
@EndUserText.label: 'Status'
case when zrap_500_t_trave.status = 'N' then 'New'
when zrap_500_t_trave.status = 'P' then 'Planned'
when zrap_500_t_trave.status = 'B' then 'Booked'
when zrap_500_t_trave.status = 'C' then 'Completed'
else 'None'end as StatusText,

@UI.hidden: true
case when zrap_500_t_trave.status = 'N' then 3
when zrap_500_t_trave.status = 'P' then 2
when zrap_500_t_trave.status = 'B' then 2
when zrap_500_t_trave.status = 'C' then 3
else 1 end as StatusCri,

//@UI.lineItem:[{position:80,type: #AS_DATAPOINT}]
//@EndUserText.label: 'Price Range'
//@UI.dataPoint:{visualization: #RATING,targetValue: 10}
//div(travel_cost, 10000) as PriceRange,
_Bookings,
_Agency,
_Currency,
_Customer
   
}

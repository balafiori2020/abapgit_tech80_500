@AbapCatalog.sqlViewName: 'ZTRAVEL_U_RAP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Display Only App for RAP Demo'
@OData.publish: true
@Search.searchable: true
        @UI.headerInfo:{
typeName: 'Travel',
typeNamePlural: 'Travels',
title.value: 'Travel_Id',
description.value: 'Tarvel_Desc',
imageUrl: 'https://d1nxzqpcg2bym0.cloudfront.net/itunes_connect/520108232/2b02b44e-3f06-11e8-b141-0b7ec38e80c7/128x128'

}

define root view ZTEC80_U_TRAVEL as select from ztrap_500_t_trav

association [1..*] to ZTRAP_500_I_BOOK as _Bookings on $projection.Travel_Id = _Bookings.Travel_Id 
association [1] to ZTRAP_500_I_CUSTOMERT as _Customer on $projection.Customer_Id = _Customer.Customer_Id 
association [1] to ZTRAP_500_I_AGENCYT as _Agency on $projection.Agency_Id = _Agency.agency_id
association [1] to I_Currency as _Currency on $projection.Currency_Code = _Currency.Currency
{
@UI.facet: [{purpose: #STANDARD,type: #IDENTIFICATION_REFERENCE,
label: 'Travel Details' ,position: 10},
{
purpose: #STANDARD,
type: #LINEITEM_REFERENCE,
label: 'Bookings' ,
position: 20,
targetElement: '_Bookings'
}

]

@UI.selectionField: [{position: 10 }]
@UI.lineItem: [{position: 10}]
@Search.defaultSearchElement: true
@EndUserText.label: 'Travel Id'
@UI.identification: [{position: 10 }]

key ztrap_500_t_trav.travel_id as Travel_Id,

@UI.lineItem: [{position: 20 }]
@Search.defaultSearchElement: true
@Search.fuzzinessThreshold: 0.7
@UI.identification: [{position: 20 }]
@EndUserText.label: 'Travel Description'
ztrap_500_t_trav.tarvel_desc as Tarvel_Desc,

@UI.selectionField: [{position: 20 }]
@UI.lineItem: [{position: 30 }]
@UI.identification: [{position: 30 }]
@Search.defaultSearchElement: true
@EndUserText.label: 'Agency Id'
//@ObjectModel.text.association: '_Agency'
@Consumption.valueHelpDefinition: [{entity:{name: 'ZTRAP_500_I_AGENCYT',element: 'agency_id'} }]
ztrap_500_t_trav.agency_id as Agency_Id,

@UI.selectionField: [{position: 30 }]
@UI.lineItem: [{position: 40 }]
@UI.identification: [{position: 40 }]
@Search.defaultSearchElement: true
//@ObjectModel.text.association: '_Customer'
@EndUserText.label: 'Customer Id'
@Consumption.valueHelpDefinition: [{entity:{name: 'ZTRAP_500_I_CUSTOMERT',element: 'Customer_Id'} }]
ztrap_500_t_trav.customer_id as Customer_Id,

@UI.lineItem: [{position: 50 }]
@UI.identification: [{position: 50 }]
@EndUserText.label: 'Begin Date'
ztrap_500_t_trav.begin_date as Begin_Date,

@UI.identification: [{position: 60 }]
@EndUserText.label: 'End Date'
@UI.lineItem: [{position: 60 }]
ztrap_500_t_trav.end_date as End_Date,
@EndUserText.label: 'Booking Fees'
@UI.identification: [{position: 70 }]
//@UI.lineItem: [{position: 70 }]
@Semantics.amount.currencyCode: 'Currency_Code'
ztrap_500_t_trav.booking_fee as Booking_Fee,

@UI.lineItem: [{position: 80 }]
@UI.identification: [{position: 80 }]
@Semantics.amount.currencyCode: 'Currency_Code'
@EndUserText.label: 'Travel Cost'
ztrap_500_t_trav.travel_cost as Travel_Cost,

@Semantics.currencyCode: true
@UI.selectionField: [{position: 40 }]
@UI.identification: [{position: 90 }]
@EndUserText.label: 'Currency'
@Consumption.valueHelpDefinition: [{entity:{name: 'I_Currency',element: 'Currency'} }]

ztrap_500_t_trav.currency_code as Currency_Code,

@EndUserText.label: 'Status'
@UI.identification: [{position: 100 }]
@UI.lineItem: [{position: 100 }]
ztrap_500_t_trav.status as STATUS,
//@UI.lineItem: [{position: 70 ,criticality: 'StatusCri' }]
//@UI.identification: [{position: 80 }]
//@EndUserText.label: 'Status'
//case when ztrap_500_t_trav.status = 'N' then 'New'
//when ztrap_500_t_trav.status = 'P' then 'Planned'
//when ztrap_500_t_trav.status = 'B' then 'Booked'
//when ztrap_500_t_trav.status = 'C' then 'Completed'
//else 'None'end as StatusText,
//
//@UI.hidden: true
//case when ztrap_500_t_trav.status = 'N' then 3
//when ztrap_500_t_trav.status = 'P' then 2
//when ztrap_500_t_trav.status = 'B' then 2
//when ztrap_500_t_trav.status = 'C' then 3
//else 1 end as StatusCri,

//@UI.lineItem:[{position:80,type: #AS_DATAPOINT}]
//@EndUserText.label: 'Price Range'
//@UI.dataPoint:{visualization: #RATING,targetValue: 10}
//div(travel_cost, 10000) as PriceRange,
_Bookings,
_Agency,
_Currency,
_Customer
   
}

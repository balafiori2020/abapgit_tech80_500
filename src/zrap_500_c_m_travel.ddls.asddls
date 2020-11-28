@EndUserText.label: 'Managed Scenario Travel'
@AccessControl.authorizationCheck: #NOT_REQUIRED

 @UI.headerInfo:{
typeName: 'Travel',
typeNamePlural: 'Travels',
title:{label: 'Travel Id',type: #STANDARD,value: 'TravelId'},
description:{type: #STANDARD,value: 'TarvelDesc'}}
@Search.searchable: true

define root view entity ZRAP_500_C_M_TRAVEL as projection on ZRAP_500_C_DIS_TRAVEL 

//association [1..*] to ZRAP_500_I_BOOKING as _Bookings on $projection.TravelId = _Bookings.TravelId
//association [1] to ZRAP_500_I_CUSTOMER as _Customer on $projection.CustomerId = _Customer.CustomerId 
//association [1] to ZRAP_500_I_AGENCY as _Agency on $projection.AgencyId = _Agency.AgencyId
//association [1] to I_Currency as _Currency on $projection.CurrencyCode = _Currency.Currency
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

key TravelId,

@UI.lineItem: [{position: 20 }]
@Search.defaultSearchElement: true
@Search.fuzzinessThreshold: 0.7
@UI.identification: [{position: 20 }]
TarvelDesc,

@UI.selectionField: [{position: 20 }]
@UI.lineItem: [{position: 30 }]
@UI.identification: [{position: 30 }]
@Search.defaultSearchElement: true
@EndUserText.label: 'Agency Id'

AgencyId,

@UI.selectionField: [{position: 30 }]
@UI.lineItem: [{position: 40 }]
@UI.identification: [{position: 40 }]
@Search.defaultSearchElement: true
@EndUserText.label: 'Customer Id'
CustomerId,

@UI.lineItem: [{position: 50 }]
@UI.identification: [{position: 50 }]
@EndUserText.label: 'Begin Date'
BeginDate,

@UI.identification: [{position: 60 }]
@EndUserText.label: 'End Date'
EndDate,

BookingFee,

@UI.lineItem: [{position: 60 }]
@UI.identification: [{position: 70 }]
@Semantics.amount.currencyCode: 'CurrencyCode'
@EndUserText.label: 'Travel Cost'
TravelCost,

@Semantics.currencyCode: true
@UI.selectionField: [{position: 40 }]
CurrencyCode,

//_Bookings,
//_Agency,
//_Currency,
//_Customer
/* Associations */
_Agency,
_Bookings:redirected to composition child ZRAP_500_C_PROJ_M_BOOKING,
_Currency,
_Customer
}

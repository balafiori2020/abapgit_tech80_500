@EndUserText.label: 'Managed Projection Booking'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@UI.headerInfo:{
typeName: 'Booking',
typeNamePlural: 'Bookings',
title:{label: 'Booking Id',type: #STANDARD,value: 'BookingId'}}
define view entity ZRAP_500_C_PROJ_M_BOOKING as projection on ZRAP_500_M_BOOKING {


@UI.facet: [{purpose: #STANDARD,type: #IDENTIFICATION_REFERENCE,
label: 'Booking Details' ,position: 10}
]
@UI.lineItem: [{position: 10 }]
@EndUserText.label: 'Booking Id'
@UI.selectionField: [{position: 10}]
@UI.identification: [{position:10 }]
key BookingId,
@UI.lineItem: [{position: 20 }]
@EndUserText.label: 'Travel Id'
@UI.selectionField: [{position: 20}]
@UI.identification: [{position:20 }]
key TravelId,
@UI.lineItem: [{position: 30 }]
@EndUserText.label: 'Booking Description'
@UI.selectionField: [{position: 30}]
@UI.identification: [{position:30 }]
BookingDesc,
@UI.lineItem: [{position: 40 }]
@EndUserText.label: 'Customer Id'
@UI.selectionField: [{position: 40}]
@UI.identification: [{position:40 }]
CustomerId,
@UI.lineItem: [{position: 50 }]
@EndUserText.label: 'Airline'
@UI.selectionField: [{position: 50}]
@UI.identification: [{position:50 }]
AirlineId,
@UI.lineItem: [{position: 60 }]
@EndUserText.label: 'Flight Number'
@UI.selectionField: [{position: 60}]
@UI.identification: [{position:60 }]
FlightNumber,
@UI.lineItem: [{position: 70 }]
@EndUserText.label: 'Flight Date'
@UI.selectionField: [{position: 70}]
@UI.identification: [{position:70 }]
FlightDate,
@UI.lineItem: [{position: 80 }]
@EndUserText.label: 'Flight Price'
@UI.selectionField: [{position: 80}]
@UI.identification: [{position:80 }]
@Semantics.amount.currencyCode: 'CurrencyCode'
FlightPrice,
@UI.lineItem: [{position: 90 }]
@EndUserText.label: 'Currency'
@UI.selectionField: [{position: 90}]
@UI.identification: [{position:90 }]
@Semantics.currencyCode: true
CurrencyCode,
@UI.lineItem: [{position: 100 }]
@EndUserText.label: 'Booking Status'
@UI.selectionField: [{position: 100}]
@UI.identification: [{position:100 }]
BookingStatus,
/* Associations */
_Airline,
_Currency,
_Customer,
_Flight,
_Travel:redirected to parent ZRAP_500_C_M_TRAVEL
    
}

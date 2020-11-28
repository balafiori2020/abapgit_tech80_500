@EndUserText.label: 'projection View Travel'
@AccessControl.authorizationCheck: #NOT_REQUIRED

@UI.headerInfo:{

typeName: 'Travel',
typeNamePlural: 'Travels',
title.value: 'TravelId'
}
@Search.searchable: true
define root view entity ZTEST_PROJECTION_TRAVEL as projection on ZTEST_M_TRAVEL {
@UI.facet: [{
purpose: #STANDARD,type: #IDENTIFICATION_REFERENCE }]
@Search.defaultSearchElement: true
@UI.lineItem: [{position:10 }]
@EndUserText.label: 'Travel Id'
@UI.selectionField: [{position: 10}]
@UI.identification: [{position: 10}]
key TravelId,
@UI.lineItem: [{position:20 }]
@EndUserText.label: 'Travel Name'
@UI.selectionField: [{position: 20}]
@UI.identification: [{position: 20}]
TarvelDesc,
@Search.defaultSearchElement: true
@UI.lineItem: [{position:30 }]
@EndUserText.label: 'Agency'
@UI.selectionField: [{position: 30}]
@UI.identification: [{position: 30}]
AgencyId,
@Search.defaultSearchElement: true
@UI.lineItem: [{position:40 }]
@EndUserText.label: 'Customer'
@UI.selectionField: [{position: 40}]
@UI.identification: [{position: 40}]
CustomerId,
@UI.lineItem: [{position:50 }]
@EndUserText.label: 'Start Date'
@UI.selectionField: [{position: 50}]
@UI.identification: [{position: 50}]
BeginDate,
@UI.lineItem: [{position:60 }]
@EndUserText.label: 'End Date'
@UI.selectionField: [{position: 60}]
@UI.identification: [{position: 60}]
EndDate,
BookingFee,
@UI.lineItem: [{position:70 }]
@EndUserText.label: 'Tarvel Cost'
@UI.selectionField: [{position: 70}]
@UI.identification: [{position: 70}]
TravelCost,
@UI.selectionField: [{position: 80}]
@UI.identification: [{position: 80}]
CurrencyCode,
@UI.selectionField: [{position: 90}]
@UI.identification: [{position: 90}]
Status,
/* Associations */
_Agency,
_Customer
    
}

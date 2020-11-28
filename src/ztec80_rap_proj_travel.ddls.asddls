@EndUserText.label: 'projection View Travel'
@AccessControl.authorizationCheck: #NOT_REQUIRED

@UI.headerInfo:{

typeName: 'Travel',
typeNamePlural: 'Travels',
title.value: 'Travel_Id'
}
@Search.searchable: true
define root view entity ZTEC80_RAP_PROJ_TRAVEL as projection on ZTEC80_RAP_M_TRAVEL {
@UI.facet: [{
purpose: #STANDARD,type: #IDENTIFICATION_REFERENCE }]
@Search.defaultSearchElement: true
@UI.lineItem: [{position:10 }]
@EndUserText.label: 'Travel Id'
@UI.selectionField: [{position: 10}]
@UI.identification: [{position: 10}]
key Travel_Id,
@UI.lineItem: [{position:20 }]
@EndUserText.label: 'Travel Name'
@UI.selectionField: [{position: 20}]
@UI.identification: [{position: 20}]

Tarvel_Desc,
@Search.defaultSearchElement: true
@UI.lineItem: [{position:30 }]
@EndUserText.label: 'Agency'
@UI.selectionField: [{position: 30}]
@UI.identification: [{position: 30}]
@Consumption.valueHelpDefinition: [{entity.name:'ZRAP_500_I_AGENCYT',entity.element: 'Agency_id' }]
agency_id,
@Search.defaultSearchElement: true
@UI.lineItem: [{position:40 }]
@EndUserText.label: 'Customer'
@UI.selectionField: [{position: 40}]
@UI.identification: [{position: 40}]
Customer_Id,
@UI.lineItem: [{position:50 }]
@EndUserText.label: 'Start Date'
@UI.selectionField: [{position: 50}]
@UI.identification: [{position: 50}]
Begin_Date,
@UI.lineItem: [{position:60 }]
@EndUserText.label: 'End Date'
@UI.selectionField: [{position: 60}]
@UI.identification: [{position: 60}]
End_Date,
Booking_Fee,
@UI.lineItem: [{position:70 }]
@EndUserText.label: 'Tarvel Cost'
@UI.selectionField: [{position: 70}]
@UI.identification: [{position: 70}]
Travel_Cost,
@UI.selectionField: [{position: 80}]
@UI.identification: [{position: 80}]
Currency_code,
@UI.selectionField: [{position: 90}]
@UI.identification: [{position: 90}]
Status,
/* Associations */
_Agency,
_Customer
    
}

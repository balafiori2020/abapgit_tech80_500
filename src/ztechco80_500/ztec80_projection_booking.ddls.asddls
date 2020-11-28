@EndUserText.label: 'Booking Projection'
@AccessControl.authorizationCheck: #CHECK



@UI.headerInfo:{

typeName: 'Booking',
typeNamePlural: 'Bookings',
title.value: 'Booking_Id',
description.value: 'Booking_Desc'

}

@Search.searchable: true
define view entity ZTEC80_PROJECTION_BOOKING as projection on ZTEC80_M_BOOKING {

@UI.facet: [{
purpose: #STANDARD,type: #IDENTIFICATION_REFERENCE }
]
@Search.defaultSearchElement: true
@UI.lineItem: [{position:10 }]
@EndUserText.label: 'Booking Id'
@UI.selectionField: [{position: 10}]
@UI.identification: [{position: 10}]
key Booking_Id,
@Search.defaultSearchElement: true
@UI.lineItem: [{position:20 }]
@EndUserText.label: 'Travel Id'
@UI.selectionField: [{position: 20}]
@UI.identification: [{position: 20}]
@Consumption.valueHelpDefinition: [{entity.name:'ZTEC80_M_TRAVEL',entity.element: 'Travel_Id' }]
key Travel_Id,
@Search.defaultSearchElement: true
@UI.lineItem: [{position:30 }]
@EndUserText.label: 'Booking Description'
@UI.selectionField: [{position: 30}]
@UI.identification: [{position: 30}]
Booking_Desc,
@Search.defaultSearchElement: true
@UI.lineItem: [{position:40 }]
@EndUserText.label: 'Customer Id'
@UI.selectionField: [{position: 40}]
@UI.identification: [{position: 40}]
@Consumption.valueHelpDefinition: [{entity.name:'ZTRAP_500_I_CUSTOMERT',entity.element: 'Customer_Id' }]
Customer_Id,
@Search.defaultSearchElement: true
@UI.lineItem: [{position:50 }]
@EndUserText.label: 'Airline Id'
@UI.selectionField: [{position: 50}]
@UI.identification: [{position: 50}]
@Consumption.valueHelpDefinition: [{entity.name:'ZTRAP_500_I_AIRLINE',entity.element: 'Airline_Id' }]
Airline_Id,
@Search.defaultSearchElement: true
@UI.lineItem: [{position:60 }]
@EndUserText.label: 'Flight Number'
@UI.selectionField: [{position: 60}]
@UI.identification: [{position: 60}]
@Consumption.valueHelpDefinition: [{entity:{name:'ZTRAP_500_I_FLIGHT',element: 'Flight_Number'},
additionalBinding: [{ localElement: 'Flight_Number',element: 'Flight_Number'},
{ localElement: 'Flight_Date',element: 'Flight_Date'},
{ localElement: 'Airline_Id',element: 'Airline_id'},
{ localElement: 'Flight_Price',element: 'Flight_Price'},
{ localElement: 'Currency_Code',element: 'Currency_Code'}
]
//additionalBiniding: [{ localElement:'',element'' }] 
}]

Flight_Number,
@Search.defaultSearchElement: true
@UI.lineItem: [{position:70 }]
@EndUserText.label: 'Flight Date'
@UI.selectionField: [{position: 70}]
@UI.identification: [{position: 70}]
Flight_Date,
@Search.defaultSearchElement: true
@UI.lineItem: [{position:80 }]
@EndUserText.label: 'Flight Price'
@UI.selectionField: [{position: 80}]
@UI.identification: [{position: 80}]
Flight_Price,
@Search.defaultSearchElement: true
@EndUserText.label: 'Currency'
@UI.selectionField: [{position: 90}]
@Consumption.valueHelpDefinition: [{entity.name:'I_Currency',entity.element: 'Currency' }]
Currency_Code,
@Search.defaultSearchElement: true
@UI.lineItem: [{position:100 }]
@EndUserText.label: 'Status'
@UI.selectionField: [{position: 100}]
@UI.identification: [{position: 100}]
Booking_Status,
/* Associations */
_Airline,
_Currency,
_Customer,
_Flight,
_Travel:redirected to parent ZTEC80_PROJECTION_TRAVEL
    
}

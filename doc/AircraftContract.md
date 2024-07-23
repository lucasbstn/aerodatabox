# aerodatabox.model.AircraftContract

## Load the model package
```dart
import 'package:aerodatabox/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Unique ID of the aircraft record in our database | 
**reg** | **String** | Tail-number of the aircraft | 
**active** | **bool** | Indicator if aircraft is operational under this registration | 
**isFreighter** | **bool** | Marker if aircraft is cargo or not | 
**verified** | **bool** |  | 
**numRegistrations** | **int** | An aircraft may have a history of past registrations with other airlines or operators.  This field represents a total number of registration records known in our database. | 
**serial** | **String** | Serial number | [optional] 
**hexIcao** | **String** | ICAO 24 bit Mode-S hexadecimal transponder address | [optional] 
**airlineName** | **String** | Name of the airline operating the aircraft | [optional] 
**iataType** | **String** | IATA-type of the aircraft | [optional] 
**iataCodeShort** | **String** | Short variant of IATA-code of the aircraft | [optional] 
**icaoCode** | **String** | ICAO-code of the aircraft | [optional] 
**model** | **String** | Model of the aircraft | [optional] 
**modelCode** | **String** | Model code of the aircraft | [optional] 
**numSeats** | **int** | Number of passenger seats | [optional] 
**rolloutDate** | [**DateTime**](DateTime.md) | Date of roll-out (UTC) | [optional] 
**firstFlightDate** | [**DateTime**](DateTime.md) | First flight date | [optional] 
**deliveryDate** | [**DateTime**](DateTime.md) | Date of delivery to the owner | [optional] 
**registrationDate** | [**DateTime**](DateTime.md) | Date of assigning current registration | [optional] 
**typeName** | **String** | Type name | [optional] 
**numEngines** | **int** | Number of engines | [optional] 
**engineType** | [**EngineType**](EngineType.md) |  | [optional] 
**productionLine** | **String** | Production line | [optional] 
**ageYears** | **double** | Age of the aircraft in year | [optional] 
**image** | [**AircraftContractImage**](AircraftContractImage.md) |  | [optional] 
**registrations** | [**List<AircraftRegistrationContract>**](AircraftRegistrationContract.md) | A history of all registrations with other airlines or operators (if provided by the endpoint). | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



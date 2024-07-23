# aerodatabox.model.AirportFlightContract

## Load the model package
```dart
import 'package:aerodatabox/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **String** | Flight Number | 
**status** | [**FlightStatus**](FlightStatus.md) |  | 
**codeshareStatus** | [**CodeshareStatus**](CodeshareStatus.md) |  | 
**isCargo** | **bool** | Is cargo flight | 
**movement** | [**AirportFlightContractMovement**](AirportFlightContractMovement.md) |  | [optional] 
**departure** | [**AirportFlightContractDeparture**](AirportFlightContractDeparture.md) |  | [optional] 
**arrival** | [**AirportFlightContractArrival**](AirportFlightContractArrival.md) |  | [optional] 
**callSign** | **String** | ATC call-sign of the flight | [optional] 
**aircraft** | [**AirportFlightContractAircraft**](AirportFlightContractAircraft.md) |  | [optional] 
**airline** | [**AirportFlightContractAirline**](AirportFlightContractAirline.md) |  | [optional] 
**location** | [**AirportFlightContractLocation**](AirportFlightContractLocation.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



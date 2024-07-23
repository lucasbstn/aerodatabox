# aerodatabox.model.FlightContract

## Load the model package
```dart
import 'package:aerodatabox/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**departure** | [**FlightAirportMovementContract**](FlightAirportMovementContract.md) |  | 
**arrival** | [**FlightAirportMovementContract**](FlightAirportMovementContract.md) |  | 
**lastUpdatedUtc** | [**DateTime**](DateTime.md) | Time (UTC) of the latest update of flight information (excluding Location) | 
**number** | **String** | Flight Number | 
**status** | [**FlightStatus**](FlightStatus.md) |  | 
**codeshareStatus** | [**CodeshareStatus**](CodeshareStatus.md) |  | 
**isCargo** | **bool** | Is cargo flight | 
**greatCircleDistance** | [**FlightContractGreatCircleDistance**](FlightContractGreatCircleDistance.md) |  | [optional] 
**callSign** | **String** | ATC call-sign of the flight | [optional] 
**aircraft** | [**AirportFlightContractAircraft**](AirportFlightContractAircraft.md) |  | [optional] 
**airline** | [**AirportFlightContractAirline**](AirportFlightContractAirline.md) |  | [optional] 
**location** | [**AirportFlightContractLocation**](AirportFlightContractLocation.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



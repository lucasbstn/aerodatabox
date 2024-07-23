# aerodatabox.model.AirportFlightContractMovement

## Load the model package
```dart
import 'package:aerodatabox/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**airport** | [**ListingAirportContract**](ListingAirportContract.md) |  | 
**quality** | [**List<FlightAirportMovementQualityEnum>**](FlightAirportMovementQualityEnum.md) | Array of quality characteristics of the data. Check this to know which information  you can expect within this contract (basic, live and/or approximate data). | [default to const []]
**scheduledTime** | [**FlightAirportMovementContractScheduledTime**](FlightAirportMovementContractScheduledTime.md) |  | [optional] 
**revisedTime** | [**FlightAirportMovementContractRevisedTime**](FlightAirportMovementContractRevisedTime.md) |  | [optional] 
**runwayTime** | [**FlightAirportMovementContractRunwayTime**](FlightAirportMovementContractRunwayTime.md) |  | [optional] 
**terminal** | **String** | Terminal of the flight | [optional] 
**checkInDesk** | **String** | Check-in desk(s) for the flight (only for departing flights) | [optional] 
**gate** | **String** | Gate of (un)boarding for the flight | [optional] 
**baggageBelt** | **String** | Baggage belt(s) for the flight (only for arriving flights) | [optional] 
**runway** | **String** | Name of a runway of landing (for arriving flights) or take-off (for departing flights), if known. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



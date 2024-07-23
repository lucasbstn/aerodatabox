# aerodatabox.model.AirportDistanceTimeContract

## Load the model package
```dart
import 'package:aerodatabox/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | [**ListingAirportContract**](ListingAirportContract.md) |  | 
**to** | [**ListingAirportContract**](ListingAirportContract.md) |  | 
**greatCircleDistance** | [**Distance**](Distance.md) |  | 
**approxFlightTime** | **String** | Approximate flight time based on re-calculation of great circle distance  against statistical duration average of multiple flights covered similar  distance before. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



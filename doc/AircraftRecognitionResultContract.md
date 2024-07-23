# aerodatabox.model.AircraftRecognitionResultContract

## Load the model package
```dart
import 'package:aerodatabox/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recognized** | [**Map<String, AircraftContract>**](AircraftContract.md) | Object containing aircrafts recognized.    Property key is aircraft registration recognized on the media resource.  Property value is an object with aircraft data found in database for corresponding registration. If nothing  is found, the value will be null. | [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



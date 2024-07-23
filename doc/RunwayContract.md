# aerodatabox.model.RunwayContract

## Load the model package
```dart
import 'package:aerodatabox/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the runway. E.g.: 27L, 06, 36C, etc. | 
**trueHdg** | **double** | True heading of the runway in degrees | 
**isClosed** | **bool** | Marker, if runway is closed | 
**surface** | [**SurfaceType**](SurfaceType.md) |  | 
**length** | [**RunwayContractLength**](RunwayContractLength.md) |  | [optional] 
**width** | [**RunwayContractWidth**](RunwayContractWidth.md) |  | [optional] 
**location** | [**RunwayContractLocation**](RunwayContractLocation.md) |  | [optional] 
**displacedThreshold** | [**RunwayContractDisplacedThreshold**](RunwayContractDisplacedThreshold.md) |  | [optional] 
**hasLighting** | **bool** | Does runway has lights | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



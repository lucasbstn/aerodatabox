# aerodatabox.model.WeatherStateContract

## Load the model package
```dart
import 'package:aerodatabox/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**location** | [**GeoCoordinatesContract**](GeoCoordinatesContract.md) |  | 
**validFrom** | [**DateTimeContract**](DateTimeContract.md) |  | 
**validTo** | [**DateTimeContract**](DateTimeContract.md) |  | 
**airTemperature** | [**WeatherStateContractAirTemperature**](WeatherStateContractAirTemperature.md) |  | [optional] 
**dewPoint** | [**WeatherStateContractDewPoint**](WeatherStateContractDewPoint.md) |  | [optional] 
**pressure** | [**WeatherStateContractPressure**](WeatherStateContractPressure.md) |  | [optional] 
**wind** | [**WeatherStateContractWind**](WeatherStateContractWind.md) |  | [optional] 
**visibility** | [**WeatherStateContractVisibility**](WeatherStateContractVisibility.md) |  | [optional] 
**report** | **String** | Aviation weather report   (typically a METAR or TAF string, as applicable) | [optional] 
**cloudBase** | [**WeatherStateContractCloudBase**](WeatherStateContractCloudBase.md) |  | [optional] 
**cloudCover** | [**CloudCover**](CloudCover.md) |  | [optional] 
**phenomenaGroups** | [**List<PhenomenaGroup>**](PhenomenaGroup.md) | Weather phenomena groups | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



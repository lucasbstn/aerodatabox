# aerodatabox.model.SolarStateContract

## Load the model package
```dart
import 'package:aerodatabox/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**location** | [**GeoCoordinatesContract**](GeoCoordinatesContract.md) |  | 
**sunElevation** | [**Angle**](Angle.md) |  | 
**sunAzimuth** | [**Azimuth**](Azimuth.md) |  | 
**dayTime** | [**List<DayTime>**](DayTime.md) | Daytime states | [default to const []]
**dawnAstronomical** | [**SolarStateContractDawnAstronomical**](SolarStateContractDawnAstronomical.md) |  | [optional] 
**dawnNautical** | [**SolarStateContractDawnNautical**](SolarStateContractDawnNautical.md) |  | [optional] 
**dawnCivil** | [**SolarStateContractDawnCivil**](SolarStateContractDawnCivil.md) |  | [optional] 
**sunrise** | [**SolarStateContractSunrise**](SolarStateContractSunrise.md) |  | [optional] 
**noonTrue** | [**SolarStateContractNoonTrue**](SolarStateContractNoonTrue.md) |  | [optional] 
**sunset** | [**SolarStateContractSunset**](SolarStateContractSunset.md) |  | [optional] 
**duskCivil** | [**SolarStateContractDuskCivil**](SolarStateContractDuskCivil.md) |  | [optional] 
**duskNautical** | [**SolarStateContractDuskNautical**](SolarStateContractDuskNautical.md) |  | [optional] 
**duskAstronomical** | [**SolarStateContractDuskAstronomical**](SolarStateContractDuskAstronomical.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



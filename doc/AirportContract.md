# aerodatabox.model.AirportContract

## Load the model package
```dart
import 'package:aerodatabox/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fullName** | **String** | Full name of the airport (derived from own airport name and municipality name) | 
**location** | [**GeoCoordinatesContract**](GeoCoordinatesContract.md) |  | 
**elevation** | [**Distance**](Distance.md) |  | 
**country** | [**AirportCountryContract**](AirportCountryContract.md) |  | 
**continent** | [**AirportContinentContract**](AirportContinentContract.md) |  | 
**timeZone** | **String** | Time zone of the airport in Olson format (e.g. \"Europe/Amsterdam\") | 
**urls** | [**AirportContractUrls**](AirportContractUrls.md) |  | 
**icao** | **String** | ICAO code of the airport | [optional] 
**iata** | **String** | IATA code of the airport | [optional] 
**localCode** | **String** | Code of the airport within the local or national codification system | [optional] 
**shortName** | **String** | Shortened name of the airport | [optional] 
**municipalityName** | **String** | Name of the municipality this airport belongs to | [optional] 
**runways** | [**List<RunwayContract>**](RunwayContract.md) | List of runway information, if requested | [optional] [default to const []]
**currentTime** | [**AirportContractCurrentTime**](AirportContractCurrentTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



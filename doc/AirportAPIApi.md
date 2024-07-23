# aerodatabox.api.AirportAPIApi

## Load the API package
```dart
import 'package:aerodatabox/api.dart';
```

All URIs are relative to *https://aerodatabox.p.rapidapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAirport**](AirportAPIApi.md#getairport) | **GET** /airports/{codeType}/{code} | Airport by code [TIER 1]
[**getAirportRunways**](AirportAPIApi.md#getairportrunways) | **GET** /airports/{codeType}/{code}/runways | Airport runways [TIER 1]
[**searchAirportByTerm**](AirportAPIApi.md#searchairportbyterm) | **GET** /airports/search/term | Search airports by free text [TIER 2]
[**searchAirportsByIpGeoLocation**](AirportAPIApi.md#searchairportsbyipgeolocation) | **GET** /airports/search/ip | Search airports by IP address geolocation [TIER 2]
[**searchAirportsByLocation**](AirportAPIApi.md#searchairportsbylocation) | **GET** /airports/search/location | Search airports by location [TIER 2]


# **getAirport**
> AirportContract getAirport(codeType, code, withRunways, withTime)

Airport by code [TIER 1]

At the moment airports having both ICAO and IATA code are present in database only.    *Returns*: Single airport data, if found.

### Example
```dart
import 'package:aerodatabox/api.dart';
// TODO Configure API key authorization: X-RapidAPI-Host
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Host').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Host').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-RapidAPI-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Key').apiKeyPrefix = 'Bearer';

final api_instance = AirportAPIApi();
final codeType = ; // AirportCodesByEnum | Type of code to search airport by (`iata` or `icao`)
final code = code_example; // String | If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
final withRunways = true; // bool | Include runways data (default - false)
final withTime = true; // bool | Include current local time (default - false)

try {
    final result = api_instance.getAirport(codeType, code, withRunways, withTime);
    print(result);
} catch (e) {
    print('Exception when calling AirportAPIApi->getAirport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeType** | [**AirportCodesByEnum**](.md)| Type of code to search airport by (`iata` or `icao`) | 
 **code** | **String**| If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable. | 
 **withRunways** | **bool**| Include runways data (default - false) | [optional] [default to false]
 **withTime** | **bool**| Include current local time (default - false) | [optional] [default to false]

### Return type

[**AirportContract**](AirportContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAirportRunways**
> List<RunwayContract> getAirportRunways(codeType, code)

Airport runways [TIER 1]

**Which runways does this airport have?**    At the moment airports having both ICAO and IATA code are present in database only.    *Returns*: Collection of runway data items.

### Example
```dart
import 'package:aerodatabox/api.dart';
// TODO Configure API key authorization: X-RapidAPI-Host
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Host').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Host').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-RapidAPI-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Key').apiKeyPrefix = 'Bearer';

final api_instance = AirportAPIApi();
final codeType = ; // AirportCodesByEnum | Type of code to search airport by (`iata` or `icao`)
final code = code_example; // String | If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.

try {
    final result = api_instance.getAirportRunways(codeType, code);
    print(result);
} catch (e) {
    print('Exception when calling AirportAPIApi->getAirportRunways: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeType** | [**AirportCodesByEnum**](.md)| Type of code to search airport by (`iata` or `icao`) | 
 **code** | **String**| If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable. | 

### Return type

[**List<RunwayContract>**](RunwayContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAirportByTerm**
> StringListingAirportContractSearchResultCollectionContract searchAirportByTerm(q, limit, withFlightInfoOnly, withSearchByCode)

Search airports by free text [TIER 2]

At the moment airports having both ICAO and IATA code and flight schedules are present available only.    *Returns:* List of airports with names and city names (and IATA/ICAO code, if enabled) matching the search term.

### Example
```dart
import 'package:aerodatabox/api.dart';
// TODO Configure API key authorization: X-RapidAPI-Host
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Host').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Host').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-RapidAPI-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Key').apiKeyPrefix = 'Bearer';

final api_instance = AirportAPIApi();
final q = q_example; // String | Search query (min. 3 non whitespace characters length)
final limit = 56; // int | Maximum number of airports to be returned (max. 250, defaut = 10)
final withFlightInfoOnly = true; // bool | If set to true, will only return airports which have flight data (scheduled or live) available. Default = false.
final withSearchByCode = true; // bool | If set to true, will attempt to interpret short words within the search query as IATA or ICAO code  and prioritize exact matches by these codes (they will appear higher than others).   Otherwise, the search by code will be completely excluded (only the name of an airport or its city will be searched).   Default = true.

try {
    final result = api_instance.searchAirportByTerm(q, limit, withFlightInfoOnly, withSearchByCode);
    print(result);
} catch (e) {
    print('Exception when calling AirportAPIApi->searchAirportByTerm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Search query (min. 3 non whitespace characters length) | 
 **limit** | **int**| Maximum number of airports to be returned (max. 250, defaut = 10) | [optional] [default to 10]
 **withFlightInfoOnly** | **bool**| If set to true, will only return airports which have flight data (scheduled or live) available. Default = false. | [optional] [default to false]
 **withSearchByCode** | **bool**| If set to true, will attempt to interpret short words within the search query as IATA or ICAO code  and prioritize exact matches by these codes (they will appear higher than others).   Otherwise, the search by code will be completely excluded (only the name of an airport or its city will be searched).   Default = true. | [optional] [default to true]

### Return type

[**StringListingAirportContractSearchResultCollectionContract**](StringListingAirportContractSearchResultCollectionContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAirportsByIpGeoLocation**
> GeoCoordinatesContractListingAirportContractSearchResultCollectionContract searchAirportsByIpGeoLocation(q, radiusKm, limit, withFlightInfoOnly)

Search airports by IP address geolocation [TIER 2]

**What are the airports closest to the customer, based on their IP address?**  **What are the airports closest to the location determined (geo-located) by a IP address?**    This endpoint determines the location by the IP address provided and then returns the list of the nearest airports  in the same way as `Search airports by location` endpoint does.     Please note:  * IP geo-location is not a precise method and it determines an approximate location only.  * At the moment airports having both ICAO and IATA code and flight schedules are present available only.    *Returns:* A list of airports found within the specified radius around the location approximated (geo-located) from the specified IP address.

### Example
```dart
import 'package:aerodatabox/api.dart';
// TODO Configure API key authorization: X-RapidAPI-Host
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Host').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Host').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-RapidAPI-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Key').apiKeyPrefix = 'Bearer';

final api_instance = AirportAPIApi();
final q = q_example; // String | A valid public IP v4 address
final radiusKm = 56; // int | Radius of search around specified location in kilometers (max. 1000 km)
final limit = 56; // int | Maximum number of airports to be returned (max. 250)
final withFlightInfoOnly = true; // bool | If set to true, will only return airports which have flight data (scheduled or live) available. Default = false.

try {
    final result = api_instance.searchAirportsByIpGeoLocation(q, radiusKm, limit, withFlightInfoOnly);
    print(result);
} catch (e) {
    print('Exception when calling AirportAPIApi->searchAirportsByIpGeoLocation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| A valid public IP v4 address | 
 **radiusKm** | **int**| Radius of search around specified location in kilometers (max. 1000 km) | 
 **limit** | **int**| Maximum number of airports to be returned (max. 250) | 
 **withFlightInfoOnly** | **bool**| If set to true, will only return airports which have flight data (scheduled or live) available. Default = false. | [optional] [default to false]

### Return type

[**GeoCoordinatesContractListingAirportContractSearchResultCollectionContract**](GeoCoordinatesContractListingAirportContractSearchResultCollectionContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAirportsByLocation**
> GeoCoordinatesContractListingAirportContractSearchResultCollectionContract searchAirportsByLocation(lat, lon, radiusKm, limit, withFlightInfoOnly)

Search airports by location [TIER 2]

**What are the airports closest to the location?**    At the moment airports having both ICAO and IATA code and flight schedules are present available only.    *Returns:* A list of airports found within the specified radius around the specified location.

### Example
```dart
import 'package:aerodatabox/api.dart';
// TODO Configure API key authorization: X-RapidAPI-Host
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Host').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Host').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-RapidAPI-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-RapidAPI-Key').apiKeyPrefix = 'Bearer';

final api_instance = AirportAPIApi();
final lat = 3.4; // double | Latitude location coordinate in decimal format (between -90 and 90)
final lon = 3.4; // double | Longitude location coordinate in decimal format (between -180 and 180)
final radiusKm = 56; // int | Radius of search around specified location in kilometers (max. 1000 km)
final limit = 56; // int | Maximum number of airports to be returned (max. 250)
final withFlightInfoOnly = true; // bool | If set to true, will only return airports which have flight data (scheduled or live) available. Default = false.

try {
    final result = api_instance.searchAirportsByLocation(lat, lon, radiusKm, limit, withFlightInfoOnly);
    print(result);
} catch (e) {
    print('Exception when calling AirportAPIApi->searchAirportsByLocation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **double**| Latitude location coordinate in decimal format (between -90 and 90) | 
 **lon** | **double**| Longitude location coordinate in decimal format (between -180 and 180) | 
 **radiusKm** | **int**| Radius of search around specified location in kilometers (max. 1000 km) | 
 **limit** | **int**| Maximum number of airports to be returned (max. 250) | 
 **withFlightInfoOnly** | **bool**| If set to true, will only return airports which have flight data (scheduled or live) available. Default = false. | [optional] [default to false]

### Return type

[**GeoCoordinatesContractListingAirportContractSearchResultCollectionContract**](GeoCoordinatesContractListingAirportContractSearchResultCollectionContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


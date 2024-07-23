# aerodatabox.api.HealthcheckAPIApi

## Load the API package
```dart
import 'package:aerodatabox/api.dart';
```

All URIs are relative to *https://aerodatabox.p.rapidapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAirportFeedStatus**](HealthcheckAPIApi.md#getairportfeedstatus) | **GET** /health/services/airports/{icao}/feeds | Data feed services status by ICAO code [FREE TIER]
[**getFeedAirports**](HealthcheckAPIApi.md#getfeedairports) | **GET** /health/services/feeds/{service}/airports | Airports supporting data feed service [FREE TIER]
[**getFeedServiceStatus**](HealthcheckAPIApi.md#getfeedservicestatus) | **GET** /health/services/feeds/{service} | General status of data feed services [FREE TIER]


# **getAirportFeedStatus**
> AirportFeedServiceStatusContract getAirportFeedStatus(icao)

Data feed services status by ICAO code [FREE TIER]

**What is the status of data updates for the airport?**    At the moment airports having both ICAO and IATA code are present in database only.    *Returns:* Current status of airport data feed services (live flight updates, flight schedules, etc.) for requested airport.

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

final api_instance = HealthcheckAPIApi();
final icao = icao_example; // String | 4-digit ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.). Full, stripped and any case formats are acceptable.

try {
    final result = api_instance.getAirportFeedStatus(icao);
    print(result);
} catch (e) {
    print('Exception when calling HealthcheckAPIApi->getAirportFeedStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **icao** | **String**| 4-digit ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.). Full, stripped and any case formats are acceptable. | 

### Return type

[**AirportFeedServiceStatusContract**](AirportFeedServiceStatusContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFeedAirports**
> StringCollectionContract getFeedAirports(service)

Airports supporting data feed service [FREE TIER]

**Which airports support flight schedules?** or **Which airports support live flight updates?**     At the moment airports having both ICAO and IATA code are present in database only.     *Returns:* Collection ICAO codes of airports supporting specified airport data feed service.

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

final api_instance = HealthcheckAPIApi();
final service = ; // FeedServiceEnum | Airport data feed service name

try {
    final result = api_instance.getFeedAirports(service);
    print(result);
} catch (e) {
    print('Exception when calling HealthcheckAPIApi->getFeedAirports: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | [**FeedServiceEnum**](.md)| Airport data feed service name | 

### Return type

[**StringCollectionContract**](StringCollectionContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFeedServiceStatus**
> FeedServiceStatusContract getFeedServiceStatus(service, withHttpCode)

General status of data feed services [FREE TIER]

**Which is the general health of the data feed service?**     *Returns:* Status of the service in general, regardless of the airports

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

final api_instance = HealthcheckAPIApi();
final service = ; // FeedServiceEnum | Data feed service name
final withHttpCode = true; // bool | If true, reflect status of the service in the HTTP code of the response (if the service is down, HTTP code will be 503).

try {
    final result = api_instance.getFeedServiceStatus(service, withHttpCode);
    print(result);
} catch (e) {
    print('Exception when calling HealthcheckAPIApi->getFeedServiceStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | [**FeedServiceEnum**](.md)| Data feed service name | 
 **withHttpCode** | **bool**| If true, reflect status of the service in the HTTP code of the response (if the service is down, HTTP code will be 503). | [optional] [default to false]

### Return type

[**FeedServiceStatusContract**](FeedServiceStatusContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


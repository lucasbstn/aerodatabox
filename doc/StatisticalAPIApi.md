# aerodatabox.api.StatisticalAPIApi

## Load the API package
```dart
import 'package:aerodatabox/api.dart';
```

All URIs are relative to *https://aerodatabox.p.rapidapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAirportDelay**](StatisticalAPIApi.md#getairportdelay) | **GET** /airports/{codeType}/{code}/delays/{dateLocal} | Airport delays (current or historical moment) [TIER 3]
[**getAirportDelays**](StatisticalAPIApi.md#getairportdelays) | **GET** /airports/{codeType}/{code}/delays/{dateFromLocal}/{dateToLocal} | Airport delays (historical period) [TIER 3]
[**getAllAirportDelays**](StatisticalAPIApi.md#getallairportdelays) | **GET** /airports/delays/{dateUtc} | Global delays (current or historical moment) [TIER 3]
[**getFlightDelays**](StatisticalAPIApi.md#getflightdelays) | **GET** /flights/{number}/delays | Flight delay statistics by flight number [TIER 3]
[**getRouteDailyStatistics**](StatisticalAPIApi.md#getroutedailystatistics) | **GET** /airports/{codeType}/{code}/stats/routes/daily/{dateLocal} | Airport routes and daily flight destinations [TIER 3]


# **getAirportDelay**
> AirportDelayContract getAirportDelay(codeType, code, dateLocal)

Airport delays (current or historical moment) [TIER 3]

**What is the current or historical average delay in the airport?** or **What is the delay index of the airport right now or at a moment in past?**    Please read more about airport delays on here: https://aerodatabox.com/api-airport-delays/    *Returns*: Statistical delay information about delays (median delay, delay index, cancelled flights) of arrivals and departures for the requested airport, represented by:  * a single `AirportDelayContract` item displaying the delay information based on flight movements within the 2 hours prior to the current moment, if no `dateLocal` is specified;  * a single `AirportDelayContract` item displaying the delay information based on flight movements within the 2 hours prior to the moment requested in `dateLocal`, if `dateLocal` is specified;

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

final api_instance = StatisticalAPIApi();
final codeType = ; // AirportCodesByEnum | Type of code to search airport by (`iata` or `icao`)
final code = code_example; // String | If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
final dateLocal = 2013-10-20T19:20:30+01:00; // DateTime | The moment of time for / from which delay data is requested (local time, format: YYYY-MM-DDTHH:mm).   Default - current time.

try {
    final result = api_instance.getAirportDelay(codeType, code, dateLocal);
    print(result);
} catch (e) {
    print('Exception when calling StatisticalAPIApi->getAirportDelay: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeType** | [**AirportCodesByEnum**](.md)| Type of code to search airport by (`iata` or `icao`) | 
 **code** | **String**| If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable. | 
 **dateLocal** | **DateTime**| The moment of time for / from which delay data is requested (local time, format: YYYY-MM-DDTHH:mm).   Default - current time. | [optional] 

### Return type

[**AirportDelayContract**](AirportDelayContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAirportDelays**
> List<AirportDelayContract> getAirportDelays(codeType, code, dateFromLocal, dateToLocal)

Airport delays (historical period) [TIER 3]

**What were the delays within a specific period of time?** or **How the delays changed  within a specific period of time?**    Please read more about airport delays on here: https://aerodatabox.com/api-airport-delays/    *Returns*: Statistical delay information about delays (median delay, delay index, cancelled flights) of arrivals and departures for the requested airport, represented by a collection of `AiportDelayContract` items displaying the delay information at multiple moments within the period between `dateLocal` and `dateToLocal`.

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

final api_instance = StatisticalAPIApi();
final codeType = ; // AirportCodesByEnum | Type of code to search airport by (`iata` or `icao`)
final code = code_example; // String | If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
final dateFromLocal = 2013-10-20T19:20:30+01:00; // DateTime | The beginning of the period of time for which delay data is requested (local time, format: YYYY-MM-DDTHH:mm).
final dateToLocal = 2013-10-20T19:20:30+01:00; // DateTime | The end of the period of time for which delay data is requested (local time, format: YYYY-MM-DDTHH:mm).

try {
    final result = api_instance.getAirportDelays(codeType, code, dateFromLocal, dateToLocal);
    print(result);
} catch (e) {
    print('Exception when calling StatisticalAPIApi->getAirportDelays: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeType** | [**AirportCodesByEnum**](.md)| Type of code to search airport by (`iata` or `icao`) | 
 **code** | **String**| If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable. | 
 **dateFromLocal** | **DateTime**| The beginning of the period of time for which delay data is requested (local time, format: YYYY-MM-DDTHH:mm). | 
 **dateToLocal** | **DateTime**| The end of the period of time for which delay data is requested (local time, format: YYYY-MM-DDTHH:mm). | 

### Return type

[**List<AirportDelayContract>**](AirportDelayContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAirportDelays**
> AirportDelayContract getAllAirportDelays(dateUtc)

Global delays (current or historical moment) [TIER 3]

**What is the current or historical delay situation in all airports?** or **What is the delay index of all airports globally right now or at a moment in past?**    Please read more about airport delays on here: https://aerodatabox.com/api-airport-delays/    *Returns*: Statistical delay information about delays (median delay, delay index, cancelled flights) of arrivals and departures for all known airports, represented by a collection of items sorted by   the average of arrival and departure index, descending order (from worst to best). Only qualifying and recent enough delay statistics records are returned.

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

final api_instance = StatisticalAPIApi();
final dateUtc = 2013-10-20T19:20:30+01:00; // DateTime | The moment of time for / from which delay data is requested (UTC time, format: YYYY-MM-DDTHH:mm).  Default - current time.

try {
    final result = api_instance.getAllAirportDelays(dateUtc);
    print(result);
} catch (e) {
    print('Exception when calling StatisticalAPIApi->getAllAirportDelays: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dateUtc** | **DateTime**| The moment of time for / from which delay data is requested (UTC time, format: YYYY-MM-DDTHH:mm).  Default - current time. | [optional] 

### Return type

[**AirportDelayContract**](AirportDelayContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFlightDelays**
> FlightLegDelayContract getFlightDelays(number)

Flight delay statistics by flight number [TIER 3]

**By how much the flight is delayed in average?**    Information is only available for flights which were tracked with live updates at least at origin or at destination within the last 90 days.    *Returns:* delay statistics for the flight with specified number.

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

final api_instance = StatisticalAPIApi();
final number = number_example; // String | Flight number (with or without spaces, IATA or ICAO, any case formats are acceptable, e.g. KL1395, Klm 1395)

try {
    final result = api_instance.getFlightDelays(number);
    print(result);
} catch (e) {
    print('Exception when calling StatisticalAPIApi->getFlightDelays: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String**| Flight number (with or without spaces, IATA or ICAO, any case formats are acceptable, e.g. KL1395, Klm 1395) | 

### Return type

[**FlightLegDelayContract**](FlightLegDelayContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRouteDailyStatistics**
> DailyRouteStatContract getRouteDailyStatistics(codeType, code, dateLocal)

Airport routes and daily flight destinations [TIER 3]

**What are the most popular routes from an airport?** or **Where I can fly from an airport?** or   **How many daily flights to different destinations from an airport?**    The data will only be available for airports which have at least schedules information available.   If the airport is also covered with live or ADS-B coverage, the quality will improve greatly as it will  be based on real data rather than on static scheduled data. To check if an airport is tracked and on which level,   use `/health/services/airports/{icao}/feeds` endpoint. You can also use `/health/services/feeds/{service}/airports` to get   the list of covered airports.     At the moment airports having both ICAO and IATA code and flight schedules are present available only.    *Returns:* List of routes and daily flights amount departing from an airport.

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

final api_instance = StatisticalAPIApi();
final codeType = ; // AirportCodesByEnum | Type of code to search airport by (`iata` or `icao`)
final code = code_example; // String | If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
final dateLocal = 2013-10-20T19:20:30+01:00; // DateTime | Local date at the airport (default = null).  If specified, returns statistics based on 7 days prior to the date specified.  Otherwise, returns statistics based on 7 days prior to the current local date at the airport.

try {
    final result = api_instance.getRouteDailyStatistics(codeType, code, dateLocal);
    print(result);
} catch (e) {
    print('Exception when calling StatisticalAPIApi->getRouteDailyStatistics: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeType** | [**AirportCodesByEnum**](.md)| Type of code to search airport by (`iata` or `icao`) | 
 **code** | **String**| If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable. | 
 **dateLocal** | **DateTime**| Local date at the airport (default = null).  If specified, returns statistics based on 7 days prior to the date specified.  Otherwise, returns statistics based on 7 days prior to the current local date at the airport. | [optional] 

### Return type

[**DailyRouteStatContract**](DailyRouteStatContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


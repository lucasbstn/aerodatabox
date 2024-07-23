# aerodatabox.api.MiscellaneousAPIApi

## Load the API package
```dart
import 'package:aerodatabox/api.dart';
```

All URIs are relative to *https://aerodatabox.p.rapidapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAirportDistanceTime**](MiscellaneousAPIApi.md#getairportdistancetime) | **GET** /airports/{codeType}/{codeFrom}/distance-time/{codeTo} | 🤖 Distance and flight time between airports [TIER 2]
[**getAirportLocalTime**](MiscellaneousAPIApi.md#getairportlocaltime) | **GET** /airports/{codeType}/{code}/time/local | Current local time at the airport [TIER 1]
[**getAirportSolarTime**](MiscellaneousAPIApi.md#getairportsolartime) | **GET** /airports/{codeType}/{code}/time/solar/{dateLocal} | Solar and day time at the airport [TIER 1]
[**getAirportWeather**](MiscellaneousAPIApi.md#getairportweather) | **GET** /airports/{codeType}/{code}/weather/{fromLocal}/{toLocal} | Weather / forecast at the airport [TIER 2]


# **getAirportDistanceTime**
> AirportDistanceTimeContract getAirportDistanceTime(codeType, codeFrom, codeTo, aircraftName, flightTimeModel)

🤖 Distance and flight time between airports [TIER 2]

**What is the great circle distance between airports?**   **What is approximate flight time between airports?**  ** What is the flight time between airports based on history of flights and/or aircraft type?** (machine-learning based)    Use `flightTimeModel` = <a href=\"#model-ModelFlightTimeEnum\">ML01</a> to get more accurate results based on historical performance of flights on route and aircraft type.    *Returns:* Distance and approximate flight time between airports, if both airports found.

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

final api_instance = MiscellaneousAPIApi();
final codeType = ; // AirportCodesByEnum | Type of code to search airport by (`iata` or `icao`)
final codeFrom = codeFrom_example; // String | If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the origin airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the origin  airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
final codeTo = codeTo_example; // String | If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the destination airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the destination  airport (e.g.: AMS, SFO, LAX, etc.);  * `local`, then the format of this field is subject to specific standards of relevant national or local airport codification systems.    Full, stripped and any case formats are acceptable.
final aircraftName = aircraftName_example; // String | Aircraft type name (free text).   If specified and `flightTimeModel` is set to <a href=\"#model-ModelFlightTimeEnum\">ML01</a>, the aircraft type   will be attempted to be taken into to provide more accurate result.  If `flightTimeModel` is set to <a href=\"#model-ModelFlightTimeEnum\">Standard</a>, the value is ignored.
final flightTimeModel = ; // ModelFlightTimeEnum | Model of calculation of the flight time. Default is <a href=\"#model-ModelFlightTimeEnum\"></a>  More advanced model(s) is available, including machine learning-based models.  See <a href=\"#model-ModelFlightTimeEnum\">ModelFlightTimeEnum</a> for details.

try {
    final result = api_instance.getAirportDistanceTime(codeType, codeFrom, codeTo, aircraftName, flightTimeModel);
    print(result);
} catch (e) {
    print('Exception when calling MiscellaneousAPIApi->getAirportDistanceTime: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeType** | [**AirportCodesByEnum**](.md)| Type of code to search airport by (`iata` or `icao`) | 
 **codeFrom** | **String**| If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the origin airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the origin  airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable. | 
 **codeTo** | **String**| If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the destination airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the destination  airport (e.g.: AMS, SFO, LAX, etc.);  * `local`, then the format of this field is subject to specific standards of relevant national or local airport codification systems.    Full, stripped and any case formats are acceptable. | 
 **aircraftName** | **String**| Aircraft type name (free text).   If specified and `flightTimeModel` is set to <a href=\"#model-ModelFlightTimeEnum\">ML01</a>, the aircraft type   will be attempted to be taken into to provide more accurate result.  If `flightTimeModel` is set to <a href=\"#model-ModelFlightTimeEnum\">Standard</a>, the value is ignored. | [optional] 
 **flightTimeModel** | [**ModelFlightTimeEnum**](.md)| Model of calculation of the flight time. Default is <a href=\"#model-ModelFlightTimeEnum\"></a>  More advanced model(s) is available, including machine learning-based models.  See <a href=\"#model-ModelFlightTimeEnum\">ModelFlightTimeEnum</a> for details. | [optional] [default to Standard]

### Return type

[**AirportDistanceTimeContract**](AirportDistanceTimeContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAirportLocalTime**
> AirportLocalTimeContract getAirportLocalTime(codeType, code)

Current local time at the airport [TIER 1]

**What is the current local time at the airport?**    At the moment airports having both ICAO and IATA code are present in database only.    *Returns:* Local time at the airport, if airport is found.

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

final api_instance = MiscellaneousAPIApi();
final codeType = ; // AirportCodesByEnum | Type of code to search airport by (`iata` or `icao`)
final code = code_example; // String | If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.

try {
    final result = api_instance.getAirportLocalTime(codeType, code);
    print(result);
} catch (e) {
    print('Exception when calling MiscellaneousAPIApi->getAirportLocalTime: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeType** | [**AirportCodesByEnum**](.md)| Type of code to search airport by (`iata` or `icao`) | 
 **code** | **String**| If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable. | 

### Return type

[**AirportLocalTimeContract**](AirportLocalTimeContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAirportSolarTime**
> SolarStateContract getAirportSolarTime(codeType, code, dateLocal)

Solar and day time at the airport [TIER 1]

**What is the sun position in the sky now at a specific time at the airport?** or  **When does the sun rise and set at the airport today or on the other day at the airport?** or  **Is it dark now or is it day at the airport?**    At the moment airports having both ICAO and IATA code are present in database only.    *Returns:* If airport is found, returns various solar-related information: sun position in the sky,  daytime (day, night, twilight: civil, nautical, astronomical, golden/blue hours),   sunrise and sunset times, etc.

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

final api_instance = MiscellaneousAPIApi();
final codeType = ; // AirportCodesByEnum | Type of code to search airport by (`iata` or `icao`)
final code = code_example; // String | If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
final dateLocal = 2013-10-20T19:20:30+01:00; // DateTime | The moment of time which solar data is request for (local time, format: YYYY-MM-DDTHH:mm).   Default - current time.

try {
    final result = api_instance.getAirportSolarTime(codeType, code, dateLocal);
    print(result);
} catch (e) {
    print('Exception when calling MiscellaneousAPIApi->getAirportSolarTime: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeType** | [**AirportCodesByEnum**](.md)| Type of code to search airport by (`iata` or `icao`) | 
 **code** | **String**| If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable. | 
 **dateLocal** | **DateTime**| The moment of time which solar data is request for (local time, format: YYYY-MM-DDTHH:mm).   Default - current time. | [optional] 

### Return type

[**SolarStateContract**](SolarStateContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAirportWeather**
> List<WeatherStateContract> getAirportWeather(codeType, code, fromLocal, toLocal)

Weather / forecast at the airport [TIER 2]

**What is the current weather at the airport?** and **What the the weather forecast for the airport?**    Please note: this endpoint is designed to give a brief simplified weather overview for the airport on-demand. This miscellaneous endpoint  is currently not designed to provide extensive weather information and is in no way replacement for specialized weather APIs.    *Returns:* Collection of a single or multiple weather records for the airport, if airport is found and weather information could be retrieved.

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

final api_instance = MiscellaneousAPIApi();
final codeType = ; // AirportCodesByEnum | Type of code to search airport by (`iata` or `icao`)
final code = code_example; // String | If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the origin airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the origin  airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
final fromLocal = 2013-10-20T19:20:30+01:00; // DateTime | Beginning of the search range (local time, format: YYYY-MM-DDTHH:mm).   Must be in range from current time up to 48 hours in future.  Default - current time.
final toLocal = 2013-10-20T19:20:30+01:00; // DateTime | End of the search range (local time, format: YYYY-MM-DDTHH:mm).   Must be equal to or more than beginning of the search range specified in `fromLocal`, up to 48 hours in future.  Default equal to `fromLocal`.

try {
    final result = api_instance.getAirportWeather(codeType, code, fromLocal, toLocal);
    print(result);
} catch (e) {
    print('Exception when calling MiscellaneousAPIApi->getAirportWeather: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeType** | [**AirportCodesByEnum**](.md)| Type of code to search airport by (`iata` or `icao`) | 
 **code** | **String**| If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the origin airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the origin  airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable. | 
 **fromLocal** | **DateTime**| Beginning of the search range (local time, format: YYYY-MM-DDTHH:mm).   Must be in range from current time up to 48 hours in future.  Default - current time. | [optional] 
 **toLocal** | **DateTime**| End of the search range (local time, format: YYYY-MM-DDTHH:mm).   Must be equal to or more than beginning of the search range specified in `fromLocal`, up to 48 hours in future.  Default equal to `fromLocal`. | [optional] 

### Return type

[**List<WeatherStateContract>**](WeatherStateContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


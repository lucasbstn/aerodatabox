# aerodatabox.api.FlightAPIApi

## Load the API package
```dart
import 'package:aerodatabox/api.dart';
```

All URIs are relative to *https://aerodatabox.p.rapidapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAirportFlights**](FlightAPIApi.md#getairportflights) | **GET** /flights/airports/{codeType}/{code}/{fromLocal}/{toLocal} | FIDS (airport departures and arrivals) - by local time range [TIER 2]
[**getAirportFlightsRelative**](FlightAPIApi.md#getairportflightsrelative) | **GET** /flights/airports/{codeType}/{code} | FIDS (airport departures and arrivals) - by relative time / by current time [TIER 2]
[**getFlight**](FlightAPIApi.md#getflight) | **GET** /flights/{searchBy}/{searchParam}/{dateLocal} | Flight status [TIER 2]
[**getFlightDates**](FlightAPIApi.md#getflightdates) | **GET** /flights/{searchBy}/{searchParam}/dates/{fromLocal}/{toLocal} | Flight departure dates [TIER 2]


# **getAirportFlights**
> AirportFidsContract getAirportFlights(codeType, code, fromLocal, toLocal, direction, withLeg, withCancelled, withCodeshared, withCargo, withPrivate, withLocation)

FIDS (airport departures and arrivals) - by local time range [TIER 2]

**What are current departures or arrivals at the airport?** or **What is the flight schedule at the airport?** or **What is flight history at the airport?**    Flights may contain live updates with corresponding information related to the actual progress of the flight   (including actual/estimated arrival/departure times). In this case this endpoint serves as a FIDS endpoint.   Presense of live updates is subject to data coverage: not all airports have this coverage in our system.    Otherwise flight information will be limited to scheduled only and will not be updated real-time. Much more airports  have this type of coverage. To check if airport is tracked and on which level, use *_/health/services/airports/{icao}/feeds* endpoint.   You can also use *_/health/services/feeds/{service}/airports* to get the list of supported airports for this  or that layer of coverage. To learn more about the data coverage, refer to *https://www.aerodatabox.com/data-coverage*.    *Returns*: the list of arriving and/or departing flights scheduled and/or planned and/or commenced within a specified   time range for a specified airport.

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

final api_instance = FlightAPIApi();
final codeType = ; // AirportCodesByEnum | Type of code to search airport by (`iata` or `icao`)
final code = code_example; // String | If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
final fromLocal = 2013-10-20T19:20:30+01:00; // DateTime | Beginning of the search range (local time, format: YYYY-MM-DDTHH:mm)
final toLocal = 2013-10-20T19:20:30+01:00; // DateTime | End of the search range (local time, format: YYYY-MM-DDTHH:mm). Must be more than beginning of the search range by no more than 12 hours.
final direction = ; // FlightDirection | Direction of flights: Arrival, Departure or Both (default)
final withLeg = true; // bool | If set to true, the result will include movement information from airport opposite in this flight leg (airport of origin for arriving flight or airport of destination for departing flight).  In this case, Movement property will be replaced with Departure and Arrival properties for each flight.  Default: false.
final withCancelled = true; // bool | If set to true, result will include cancelled, divered, likely cancelled (CanceledUncertain) flights.  Default: true.
final withCodeshared = true; // bool | If set to true, the result will include flights with all code-shared statuses.  Otherwise, code-sharing flights will be exclued. For airports, where no information about code-share statuses  of flights are supplied (all flights are CodeshareStatus=Unknown), complex filtering will be applied   to determine which flights are likely to be operational (caution: false results are possible).
final withCargo = true; // bool | If set to true, the result will include cargo flights (subject to availability).
final withPrivate = true; // bool | If set to true, the result will include private flights (subject to availability).
final withLocation = true; // bool | If set to true, each currently active flight within the result will be populated   with its present real-time location, altitude, speed and track (subject to availability).

try {
    final result = api_instance.getAirportFlights(codeType, code, fromLocal, toLocal, direction, withLeg, withCancelled, withCodeshared, withCargo, withPrivate, withLocation);
    print(result);
} catch (e) {
    print('Exception when calling FlightAPIApi->getAirportFlights: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeType** | [**AirportCodesByEnum**](.md)| Type of code to search airport by (`iata` or `icao`) | 
 **code** | **String**| If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable. | 
 **fromLocal** | **DateTime**| Beginning of the search range (local time, format: YYYY-MM-DDTHH:mm) | 
 **toLocal** | **DateTime**| End of the search range (local time, format: YYYY-MM-DDTHH:mm). Must be more than beginning of the search range by no more than 12 hours. | 
 **direction** | [**FlightDirection**](.md)| Direction of flights: Arrival, Departure or Both (default) | [optional] [default to Both]
 **withLeg** | **bool**| If set to true, the result will include movement information from airport opposite in this flight leg (airport of origin for arriving flight or airport of destination for departing flight).  In this case, Movement property will be replaced with Departure and Arrival properties for each flight.  Default: false. | [optional] [default to false]
 **withCancelled** | **bool**| If set to true, result will include cancelled, divered, likely cancelled (CanceledUncertain) flights.  Default: true. | [optional] [default to true]
 **withCodeshared** | **bool**| If set to true, the result will include flights with all code-shared statuses.  Otherwise, code-sharing flights will be exclued. For airports, where no information about code-share statuses  of flights are supplied (all flights are CodeshareStatus=Unknown), complex filtering will be applied   to determine which flights are likely to be operational (caution: false results are possible). | [optional] [default to true]
 **withCargo** | **bool**| If set to true, the result will include cargo flights (subject to availability). | [optional] [default to true]
 **withPrivate** | **bool**| If set to true, the result will include private flights (subject to availability). | [optional] [default to true]
 **withLocation** | **bool**| If set to true, each currently active flight within the result will be populated   with its present real-time location, altitude, speed and track (subject to availability). | [optional] [default to false]

### Return type

[**AirportFidsContract**](AirportFidsContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAirportFlightsRelative**
> AirportFidsContract getAirportFlightsRelative(codeType, code, offsetMinutes, durationMinutes, direction, withLeg, withCancelled, withCodeshared, withCargo, withPrivate, withLocation)

FIDS (airport departures and arrivals) - by relative time / by current time [TIER 2]

**What are current departures or arrivals at the airport?** or **What is the flight schedule at the airport?** or **What is flight history at the airport?**    Flights may contain live updates with corresponding information related to the actual progress of the flight   (including actual/estimated arrival/departure times). In this case this endpoint serves as a FIDS endpoint.   Presense of live updates is subject to data coverage: not all airports have this coverage in our system.    Otherwise flight information will be limited to scheduled only and will not be updated real-time. Much more airports  have this type of coverage. To check if airport is tracked and on which level, use *_/health/services/airports/{icao}/feeds* endpoint.   You can also use *_/health/services/feeds/{service}/airports* to get the list of supported airports for this  or that layer of coverage. To learn more about the data coverage, refer to *https://www.aerodatabox.com/data-coverage*.    *Returns*: the list of arriving and/or departing flights scheduled and/or planned and/or commenced within a time range specified   relatively to the current local time at the airport.

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

final api_instance = FlightAPIApi();
final codeType = ; // AirportCodesByEnum | Type of code to search airport by (`iata` or `icao`)
final code = code_example; // String | If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
final offsetMinutes = 789; // int | Beginning of the search range expressed in minutes relative to the current time at the airport (default: `-120`)
final durationMinutes = 789; // int | Length (duration) of the search range expressed in minutes (default: `720`)
final direction = ; // FlightDirection | Direction of flights: Arrival, Departure or Both (default)
final withLeg = true; // bool | If set to true, the result will include movement information from airport opposite in this flight leg (airport of origin for arriving flight or airport of destination for departing flight).  In this case, Movement property will be replaced with Departure and Arrival properties for each flight.  Default: false.
final withCancelled = true; // bool | If set to true, result will include cancelled, divered, likely cancelled (CanceledUncertain) flights.  Default: true.
final withCodeshared = true; // bool | If set to true, the result will include flights with all code-shared statuses.  Otherwise, code-sharing flights will be exclued. For airports, where no information about code-share statuses  of flights are supplied (all flights are CodeshareStatus=Unknown), complex filtering will be applied   to determine which flights are likely to be operational (caution: false results are possible).
final withCargo = true; // bool | If set to true, the result will include cargo flights (subject to availability).
final withPrivate = true; // bool | If set to true, the result will include private flights (subject to availability).
final withLocation = true; // bool | If set to true, each currently active flight within the result will be populated   with its present real-time location, altitude, speed and track (subject to availability).

try {
    final result = api_instance.getAirportFlightsRelative(codeType, code, offsetMinutes, durationMinutes, direction, withLeg, withCancelled, withCodeshared, withCargo, withPrivate, withLocation);
    print(result);
} catch (e) {
    print('Exception when calling FlightAPIApi->getAirportFlightsRelative: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeType** | [**AirportCodesByEnum**](.md)| Type of code to search airport by (`iata` or `icao`) | 
 **code** | **String**| If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable. | 
 **offsetMinutes** | **int**| Beginning of the search range expressed in minutes relative to the current time at the airport (default: `-120`) | [optional] [default to -120]
 **durationMinutes** | **int**| Length (duration) of the search range expressed in minutes (default: `720`) | [optional] [default to 720]
 **direction** | [**FlightDirection**](.md)| Direction of flights: Arrival, Departure or Both (default) | [optional] [default to Both]
 **withLeg** | **bool**| If set to true, the result will include movement information from airport opposite in this flight leg (airport of origin for arriving flight or airport of destination for departing flight).  In this case, Movement property will be replaced with Departure and Arrival properties for each flight.  Default: false. | [optional] [default to false]
 **withCancelled** | **bool**| If set to true, result will include cancelled, divered, likely cancelled (CanceledUncertain) flights.  Default: true. | [optional] [default to true]
 **withCodeshared** | **bool**| If set to true, the result will include flights with all code-shared statuses.  Otherwise, code-sharing flights will be exclued. For airports, where no information about code-share statuses  of flights are supplied (all flights are CodeshareStatus=Unknown), complex filtering will be applied   to determine which flights are likely to be operational (caution: false results are possible). | [optional] [default to true]
 **withCargo** | **bool**| If set to true, the result will include cargo flights (subject to availability). | [optional] [default to true]
 **withPrivate** | **bool**| If set to true, the result will include private flights (subject to availability). | [optional] [default to true]
 **withLocation** | **bool**| If set to true, each currently active flight within the result will be populated   with its present real-time location, altitude, speed and track (subject to availability). | [optional] [default to false]

### Return type

[**AirportFidsContract**](AirportFidsContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFlight**
> List<FlightContract> getFlight(searchBy, searchParam, dateLocal, withAircraftImage, withLocation)

Flight status [TIER 2]

**What is the flight status?** or **What is the flight schedule?**    Returns live flight status (if the flight is within the coverage and not in distant future),   or flight schedule data otherwise.    If `dateLocal` is specified, gets information about flight(s) departing or arriving on the day specified (local time).  Otherwise, gets information about the status of flight(s) operating on the date of the nearest flight   (either in past or in future).    Flight can be searched by:  * flight number it's being operated under; or  * ATC-callsign it's being operated under; or  * tail-number of the aircraft it's being operated by; or  * Mode-S 24-bit ICAO Transponder address of the aircraft it's being operated by.    Flight may include airport of arrival and departure, scheduled and actual times, flight status, type of aircraft,   tail-number and aircraft image.    Some flights may have partial information only. Information may be absent for either arrival   or departure airport or can be without live updates of time and status.   Check quality markers inside the response for more information.    Normally, information with live status updates and estimated/actual arrival/departure times is only available   for airports tracked live or with ADS-B by our system. Otherwise flight information will be with scheduled info only   or absent.     To check if an airport is tracked and on which level,   use `/health/services/airports/{icao}/feeds` endpoint. You can also use `/health/services/feeds/{service}/airports` to get   the list of covered airports.     Read more about coverage and flight data limits here: https://www.aerodatabox.com/data-coverage.    Aircraft images are being searched in external sources by certain criteria without any manual intervention.   Therefore, false matches may be returned. Only images with licenses approved for commercial use are returned.   Please be advised that you may be required to mention author attribution before using the image.

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

final api_instance = FlightAPIApi();
final searchBy = ; // FlightSearchByEnum | Criteria to search flight by
final searchParam = searchParam_example; // String | Value of the search criteria. If `searchBy` is:   * `number`, then this field shoud be Flight number (with or without spaces, IATA or ICAO, any case formats are acceptable, e.g. KL1395, Klm 1395)  * `callsign`, then this field should be ATC call-sign of the flight (with or without spaces, any case formats are acceptable, e.g.AFL1482, nca 008X);  * `reg`, then this field should be Aircraft tail-number (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ);  * `icao24`, then this field should be Aircraft ICAO 24-bit Mode-S address specified in hexadecimal format (e.g. 484161, 483EFD).
final dateLocal = 2013-10-20T19:20:30+01:00; // DateTime | Local date of departure or arrival (in format: YYYY-MM-DD, e.g.: 2019-08-29).
final withAircraftImage = true; // bool | Should include aircraft image (default: false).
final withLocation = true; // bool | Should include real-time positional data, e.g.: location, speed, altitude, etc., if available (default: false).

try {
    final result = api_instance.getFlight(searchBy, searchParam, dateLocal, withAircraftImage, withLocation);
    print(result);
} catch (e) {
    print('Exception when calling FlightAPIApi->getFlight: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchBy** | [**FlightSearchByEnum**](.md)| Criteria to search flight by | 
 **searchParam** | **String**| Value of the search criteria. If `searchBy` is:   * `number`, then this field shoud be Flight number (with or without spaces, IATA or ICAO, any case formats are acceptable, e.g. KL1395, Klm 1395)  * `callsign`, then this field should be ATC call-sign of the flight (with or without spaces, any case formats are acceptable, e.g.AFL1482, nca 008X);  * `reg`, then this field should be Aircraft tail-number (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ);  * `icao24`, then this field should be Aircraft ICAO 24-bit Mode-S address specified in hexadecimal format (e.g. 484161, 483EFD). | 
 **dateLocal** | **DateTime**| Local date of departure or arrival (in format: YYYY-MM-DD, e.g.: 2019-08-29). | [optional] 
 **withAircraftImage** | **bool**| Should include aircraft image (default: false). | [optional] [default to false]
 **withLocation** | **bool**| Should include real-time positional data, e.g.: location, speed, altitude, etc., if available (default: false). | [optional] [default to false]

### Return type

[**List<FlightContract>**](FlightContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFlightDates**
> List<String> getFlightDates(searchBy, searchParam, fromLocal, toLocal)

Flight departure dates [TIER 2]

**On which days the flight operates?** or **What is the flight schedule?**    Flight can be searched by:  * flight number it's being operated under; or  * ATC-callsign it's being operated under; or  * tail-number of the aircraft it's being operated by; or  * Mode-S 24-bit ICAO Transponder address of the aircraft it's being operated by.    *Returns:* Array of local departure dates in (YYYY-MM-DD) format for flights operated under speified call-sign and within the time range specified.

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

final api_instance = FlightAPIApi();
final searchBy = ; // FlightSearchByEnum | Criteria to search flight by
final searchParam = searchParam_example; // String | Value of the search criteria. If **searchBy** is:   * `number`, then this field shoud be Flight number (with or without spaces, IATA or ICAO, any case formats are acceptable, e.g. KL1395, Klm 1395)  * `callsign`, then this field should be ATC call-sign of the flight (with or without spaces, any case formats are acceptable, e.g.AFL1482, nca 008X);  * `reg`: then this field should be Aircraft tail-number (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ);  * `icao24`, then this field should be Aircraft ICAO 24-bit Mode-S address specified in hexadecimal format (e.g. 484161, 483EFD).
final fromLocal = 2013-10-20T19:20:30+01:00; // DateTime | Beginning of the search range (local time, format: YYYY-MM-DD)
final toLocal = 2013-10-20T19:20:30+01:00; // DateTime | End of the search range (local time, format: YYYY-MM-DD)

try {
    final result = api_instance.getFlightDates(searchBy, searchParam, fromLocal, toLocal);
    print(result);
} catch (e) {
    print('Exception when calling FlightAPIApi->getFlightDates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchBy** | [**FlightSearchByEnum**](.md)| Criteria to search flight by | 
 **searchParam** | **String**| Value of the search criteria. If **searchBy** is:   * `number`, then this field shoud be Flight number (with or without spaces, IATA or ICAO, any case formats are acceptable, e.g. KL1395, Klm 1395)  * `callsign`, then this field should be ATC call-sign of the flight (with or without spaces, any case formats are acceptable, e.g.AFL1482, nca 008X);  * `reg`: then this field should be Aircraft tail-number (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ);  * `icao24`, then this field should be Aircraft ICAO 24-bit Mode-S address specified in hexadecimal format (e.g. 484161, 483EFD). | 
 **fromLocal** | **DateTime**| Beginning of the search range (local time, format: YYYY-MM-DD) | [optional] 
 **toLocal** | **DateTime**| End of the search range (local time, format: YYYY-MM-DD) | [optional] 

### Return type

**List<String>**

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


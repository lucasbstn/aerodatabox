# aerodatabox.api.AircraftAPIApi

## Load the API package
```dart
import 'package:aerodatabox/api.dart';
```

All URIs are relative to *https://aerodatabox.p.rapidapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAircraft**](AircraftAPIApi.md#getaircraft) | **GET** /aircrafts/{searchBy}/{searchParam} | Single aircraft (by tail-number, Mode-S or ID) [TIER 1]
[**getAircraftImageByRegistration**](AircraftAPIApi.md#getaircraftimagebyregistration) | **GET** /aircrafts/reg/{reg}/image/beta | Aircraft image by tail-number (BETA) [TIER 2]
[**getAircraftRegistrations**](AircraftAPIApi.md#getaircraftregistrations) | **GET** /aircrafts/{searchBy}/{searchParam}/registrations | Single aircraft registration history (by tail-number, Mode-S or ID) [TIER 1]
[**getAirlineFleet**](AircraftAPIApi.md#getairlinefleet) | **GET** /airlines/{airlineCode}/aircrafts | Airline fleet / Aircraft list by airline code (BETA) [TIER 3]
[**getAllAircraft**](AircraftAPIApi.md#getallaircraft) | **GET** /aircrafts/{searchBy}/{searchParam}/all | All aircraft (by tail-number, Mode-S or ID) [TIER 1]
[**recognizeAircraft**](AircraftAPIApi.md#recognizeaircraft) | **POST** /aircrafts/recognize/beta | Aicraft image recognition (BETA) [TIER 3]


# **getAircraft**
> AircraftContract getAircraft(searchBy, searchParam, withImage, withRegistrations)

Single aircraft (by tail-number, Mode-S or ID) [TIER 1]

*Returns:* Single aircraft, *best* matching specified search criteria, if found. Please note that all found aircraft will be impersonated with registration information matching the requested tail number or Mode-S even though an aircraft might be flying under a different registration right now.

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

final api_instance = AircraftAPIApi();
final searchBy = ; // AircraftSearchByEnum | Criteria to search aircraft by
final searchParam = searchParam_example; // String | Value of the search criteria. If `searchBy` is:   * `id`: then this field should be an ID of an aircraft (as specified in the database of this API);  * `reg`: then this field should be a tail-number of an aircraft (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ), multiple matches are possible - see below;  * `icao24`, then this field should be a ICAO 24-bit Mode-S address of an aircraft specified in hexadecimal format (e.g. 484161, 483EFD), multiple matches are possible - see below.    *If multiple matches are possible:*    There cannot be more than one aircraft actively flying with the same tail-number or ICAO 24-bit Mode-S address at any moment of time.   However, historically aircraft tail-numbers or addresses may be used multiple times by different aircraft.  This endpoint is supposed to return a **single** aircraft data. In case if multiple aircraft satisfy the search criteria, the best match will be chosen as follows:  * If an active aircraft is found according to the requested critera, it is returned.  * Otherwise, an aircraft that used requested tail-number/address the most recently is returned.   * If usage time may not be determined, the aircraft stored in the database the most recently is returned.
final withImage = true; // bool | Should include aircraft image (default: false).
final withRegistrations = true; // bool | Should include the history of aircraft registrations (default: false).

try {
    final result = api_instance.getAircraft(searchBy, searchParam, withImage, withRegistrations);
    print(result);
} catch (e) {
    print('Exception when calling AircraftAPIApi->getAircraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchBy** | [**AircraftSearchByEnum**](.md)| Criteria to search aircraft by | 
 **searchParam** | **String**| Value of the search criteria. If `searchBy` is:   * `id`: then this field should be an ID of an aircraft (as specified in the database of this API);  * `reg`: then this field should be a tail-number of an aircraft (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ), multiple matches are possible - see below;  * `icao24`, then this field should be a ICAO 24-bit Mode-S address of an aircraft specified in hexadecimal format (e.g. 484161, 483EFD), multiple matches are possible - see below.    *If multiple matches are possible:*    There cannot be more than one aircraft actively flying with the same tail-number or ICAO 24-bit Mode-S address at any moment of time.   However, historically aircraft tail-numbers or addresses may be used multiple times by different aircraft.  This endpoint is supposed to return a **single** aircraft data. In case if multiple aircraft satisfy the search criteria, the best match will be chosen as follows:  * If an active aircraft is found according to the requested critera, it is returned.  * Otherwise, an aircraft that used requested tail-number/address the most recently is returned.   * If usage time may not be determined, the aircraft stored in the database the most recently is returned. | 
 **withImage** | **bool**| Should include aircraft image (default: false). | [optional] [default to false]
 **withRegistrations** | **bool**| Should include the history of aircraft registrations (default: false). | [optional] [default to false]

### Return type

[**AircraftContract**](AircraftContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAircraftImageByRegistration**
> ResourceContract getAircraftImageByRegistration(reg)

Aircraft image by tail-number (BETA) [TIER 2]

**What is the aircraft photo?**    Aircraft images are being searched in external sources by certain criteria without any manual intervention.   Therefore, false matches may be returned. Only images with licenses approved for commercial use are returned. Please be advised that you may be required to mention author attribution before using the image.    *Returns:* Image data with medium-sized direct image URL and licence approved for commercial use  is returned.

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

final api_instance = AircraftAPIApi();
final reg = reg_example; // String | Tail-number of the aircraft (full, stripped and any case formats are acceptable).

try {
    final result = api_instance.getAircraftImageByRegistration(reg);
    print(result);
} catch (e) {
    print('Exception when calling AircraftAPIApi->getAircraftImageByRegistration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reg** | **String**| Tail-number of the aircraft (full, stripped and any case formats are acceptable). | 

### Return type

[**ResourceContract**](ResourceContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAircraftRegistrations**
> List<AircraftRegistrationContract> getAircraftRegistrations(searchBy, searchParam)

Single aircraft registration history (by tail-number, Mode-S or ID) [TIER 1]

*Returns:* A list of all known registrations of a single aircraft, *best* matching specified search criteria, if found

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

final api_instance = AircraftAPIApi();
final searchBy = ; // AircraftSearchByEnum | Criteria to search aircraft by
final searchParam = searchParam_example; // String | Value of the search criteria. If `searchBy` is:   * `id`, then this field should be an ID of an aircraft (as specified in the database of this API);  * `reg`, then this field should be a tail-number of an aircraft (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ), multiple matches are possible - see below;  * `icao24`, then this field should be a ICAO 24-bit Mode-S address of an aircraft specified in hexadecimal format (e.g. 484161, 483EFD), multiple matches are possible - see below.    *If multiple matches are possible:* see similar remark to `Single aircraft` endpoint.

try {
    final result = api_instance.getAircraftRegistrations(searchBy, searchParam);
    print(result);
} catch (e) {
    print('Exception when calling AircraftAPIApi->getAircraftRegistrations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchBy** | [**AircraftSearchByEnum**](.md)| Criteria to search aircraft by | 
 **searchParam** | **String**| Value of the search criteria. If `searchBy` is:   * `id`, then this field should be an ID of an aircraft (as specified in the database of this API);  * `reg`, then this field should be a tail-number of an aircraft (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ), multiple matches are possible - see below;  * `icao24`, then this field should be a ICAO 24-bit Mode-S address of an aircraft specified in hexadecimal format (e.g. 484161, 483EFD), multiple matches are possible - see below.    *If multiple matches are possible:* see similar remark to `Single aircraft` endpoint. | 

### Return type

[**List<AircraftRegistrationContract>**](AircraftRegistrationContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAirlineFleet**
> AircraftContractPagedCollectionContract getAirlineFleet(airlineCode, pageSize, pageOffset, withRegistrations)

Airline fleet / Aircraft list by airline code (BETA) [TIER 3]

*Returns:* A paged list of aircraft in the fleet of the specified airline.     That will include *active* aircraft currently flying in an *active* airline, verfified through more than one source.  Unconfirmed sightings of an aircraft will not qualify said aircraft to be listed in the fleet.

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

final api_instance = AircraftAPIApi();
final airlineCode = airlineCode_example; // String | 3-character ICAO-code of the airliner (e.g., KLM, ACA); or  2-character IATA-code of the airline (e.g., KL, AC).                Please note that more than one active airline may have the same IATA code, therefore IATA codes are not recommended for this endpoint.
final pageSize = 56; // int | The number of returned records will be capped at this value.  Must be a positive value and not exceed the limit stipulated by your pricing plan.
final pageOffset = 56; // int | The number of records to skip before listing a page of records. In conjunction with `pageSize` effectively determines the page number (default  - 0).
final withRegistrations = true; // bool | Should include the history of aircraft registrations (default: false).

try {
    final result = api_instance.getAirlineFleet(airlineCode, pageSize, pageOffset, withRegistrations);
    print(result);
} catch (e) {
    print('Exception when calling AircraftAPIApi->getAirlineFleet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **airlineCode** | **String**| 3-character ICAO-code of the airliner (e.g., KLM, ACA); or  2-character IATA-code of the airline (e.g., KL, AC).                Please note that more than one active airline may have the same IATA code, therefore IATA codes are not recommended for this endpoint. | 
 **pageSize** | **int**| The number of returned records will be capped at this value.  Must be a positive value and not exceed the limit stipulated by your pricing plan. | 
 **pageOffset** | **int**| The number of records to skip before listing a page of records. In conjunction with `pageSize` effectively determines the page number (default  - 0). | [optional] [default to 0]
 **withRegistrations** | **bool**| Should include the history of aircraft registrations (default: false). | [optional] [default to false]

### Return type

[**AircraftContractPagedCollectionContract**](AircraftContractPagedCollectionContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAircraft**
> List<AircraftContract> getAllAircraft(searchBy, searchParam, withImage, withRegistrations)

All aircraft (by tail-number, Mode-S or ID) [TIER 1]

*Returns:* A list of all aircraft ever matched the requested criteria. Please note that all found aircraft will be impersonated with registration information matching the requested tail number or Mode-S even though an aircraft might be flying under a different registration right now.

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

final api_instance = AircraftAPIApi();
final searchBy = ; // AircraftSearchByEnum | Criteria to search aircraft by
final searchParam = searchParam_example; // String | Value of the search criteria. If `searchBy` is:   * `id`, then this field should be an ID of an aircraft (as specified in the database of this API);  * `reg`, then this field should be a tail-number of an aircraft (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ);  * `icao24`, then this field should be a ICAO 24-bit Mode-S address of an aircraft specified in hexadecimal format (e.g. 484161, 483EFD).
final withImage = true; // bool | Should include aircraft image (default: false).
final withRegistrations = true; // bool | Should include the history of aircraft registrations (default: false).

try {
    final result = api_instance.getAllAircraft(searchBy, searchParam, withImage, withRegistrations);
    print(result);
} catch (e) {
    print('Exception when calling AircraftAPIApi->getAllAircraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchBy** | [**AircraftSearchByEnum**](.md)| Criteria to search aircraft by | 
 **searchParam** | **String**| Value of the search criteria. If `searchBy` is:   * `id`, then this field should be an ID of an aircraft (as specified in the database of this API);  * `reg`, then this field should be a tail-number of an aircraft (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ);  * `icao24`, then this field should be a ICAO 24-bit Mode-S address of an aircraft specified in hexadecimal format (e.g. 484161, 483EFD). | 
 **withImage** | **bool**| Should include aircraft image (default: false). | [optional] [default to false]
 **withRegistrations** | **bool**| Should include the history of aircraft registrations (default: false). | [optional] [default to false]

### Return type

[**List<AircraftContract>**](AircraftContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recognizeAircraft**
> AircraftRecognitionResultContract recognizeAircraft(photo)

Aicraft image recognition (BETA) [TIER 3]

**What aircrafts are depicted on this photo?**    This endpoint recognizes aircrafts on uploaded image and returns information about all detected aircrafts. It is based on computer vision technology and therefore results may be imprecise.   It relies on detecting aircrafts' registrations and, once detected, attempting to match these registration with records in aircrafts database.    *Returns:* Data about found and recognized aircrafts.

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

final api_instance = AircraftAPIApi();
final photo = BINARY_DATA_HERE; // MultipartFile | 

try {
    final result = api_instance.recognizeAircraft(photo);
    print(result);
} catch (e) {
    print('Exception when calling AircraftAPIApi->recognizeAircraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **photo** | **MultipartFile**|  | 

### Return type

[**AircraftRecognitionResultContract**](AircraftRecognitionResultContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


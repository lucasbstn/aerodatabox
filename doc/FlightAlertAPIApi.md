# aerodatabox.api.FlightAlertAPIApi

## Load the API package
```dart
import 'package:aerodatabox/api.dart';
```

All URIs are relative to *https://aerodatabox.p.rapidapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWebhook**](FlightAlertAPIApi.md#getwebhook) | **GET** /subscriptions/webhook/{subscriptionId} | Get web-hook subscription [FREE TIER]
[**getWebhookList**](FlightAlertAPIApi.md#getwebhooklist) | **GET** /subscriptions/webhook | List web-hook subscriptions [FREE TIER]
[**refreshWebhook**](FlightAlertAPIApi.md#refreshwebhook) | **PATCH** /subscriptions/webhook/{subscriptionId}/refresh | Refresh web-hook subscription [TIER 4]
[**subscribeWebhook**](FlightAlertAPIApi.md#subscribewebhook) | **POST** /subscriptions/webhook/{subjectType}/{subjectId} | Create web-hook subscription [TIER 4]
[**unsubscribeWebhook**](FlightAlertAPIApi.md#unsubscribewebhook) | **DELETE** /subscriptions/webhook/{subscriptionId} | Remove web-hook subscription [FREE TIER]


# **getWebhook**
> SubscriptionContract getWebhook(subscriptionId)

Get web-hook subscription [FREE TIER]

*This endpoitns is a part of Flight alert PUSH API currently powered by webhooks.    If you are running your own web service, you can subscribe to flights by number or airport code.   After that, your HTTP endpoint will be called (notified) whenever the flight information gets   updated.*    Gets information about an existing active web-hook subscription.

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

final api_instance = FlightAlertAPIApi();
final subscriptionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Subscription ID

try {
    final result = api_instance.getWebhook(subscriptionId);
    print(result);
} catch (e) {
    print('Exception when calling FlightAlertAPIApi->getWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **String**| Subscription ID | 

### Return type

[**SubscriptionContract**](SubscriptionContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhookList**
> List<SubscriptionContract> getWebhookList()

List web-hook subscriptions [FREE TIER]

*This endpoitns is a part of Flight alert PUSH API currently powered by webhooks.    If you are running your own web service, you can subscribe to flights by number or airport code.   After that, your HTTP endpoint will be called (notified) whenever the flight information gets   updated.*    Get the list of existing active web-hook subscriptions

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

final api_instance = FlightAlertAPIApi();

try {
    final result = api_instance.getWebhookList();
    print(result);
} catch (e) {
    print('Exception when calling FlightAlertAPIApi->getWebhookList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SubscriptionContract>**](SubscriptionContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshWebhook**
> SubscriptionContract refreshWebhook(subscriptionId)

Refresh web-hook subscription [TIER 4]

*This endpoitns is a part of Flight alert PUSH API currently powered by webhooks.    If you are running your own web service, you can subscribe to flights by number or airport code.   After that, your HTTP endpoint will be called (notified) whenever the flight information gets   updated.*    Refreshes an existing web-hook subscription    If the subscription had an expiration date-time set when created, this endpoint   will extend it by the same period of time as the one it was originally created with.   E.g., if subscription was originally created for 7 days, this endpoint will  add extra 7 days to the expiration date-time. Note, that web-hook subscriptions  cannot be extended beyond the sliding window of 60 days from the current date-time.     If the subscription had no expiration date-time set, nothing occurs.

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

final api_instance = FlightAlertAPIApi();
final subscriptionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Subscription ID

try {
    final result = api_instance.refreshWebhook(subscriptionId);
    print(result);
} catch (e) {
    print('Exception when calling FlightAlertAPIApi->refreshWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **String**| Subscription ID | 

### Return type

[**SubscriptionContract**](SubscriptionContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscribeWebhook**
> SubscriptionContract subscribeWebhook(subjectType, subjectId, createWebHookSubscription)

Create web-hook subscription [TIER 4]

*This endpoitns is a part of Flight alert PUSH API currently powered by webhooks.    If you are running your own web service, you can subscribe to flights by number or airport code.   After that, your HTTP endpoint will be called (notified) whenever the flight information gets   updated.*    Creates a web-hook subscription on a subject (e.g., flight alerts by number or by airport code).  Returns information about created subscription. Subscription ID contained in it  can be used to refresh or remove it.    If subscription contains an expiration date-time, it will auto-expire automatically  on this time. If you want to prevent expiration, use `webhook/{subscriptionId}/refresh`   endpoint to refresh the subscription.    Every time a subject gets updated, a HTTP request will be sent to  the URL specified in `url` parameter. Request will be of a POST type   and contain JSON-formatted `FlightNotificationContract` object containing subscription  and flights information in  the body (see example response for status code 199  of this endpoint documentation).    All flight alerts / notifications are delivered in best-effort manner. They might be missing  or delayed. If there was an error delivering a notification for any reason,  there will be 2 more retries after 5 and 15 minutes (precise numbers might change).    If subscribed to a specific flight or to flights operated in a specific airport:  * Ensure that the flight is within the live updates / ADS-B data coverage. There is no sense in subscribing to a flight which operates in airports having poor or  no live updates or ADS-B coverage: there simply will be no updates. To check if an airport is tracked and on which level, use `/health/services/airports/{icao}/feeds` endpoint. You can also use `/health/services/feeds/{service}/airports` to get the list of covered airports. Read more about coverage here: https://www.aerodatabox.com/data-coverage.  * Notifications will cover updates for flights commencing from 6 hours ago up to 72 hours in future.  * Among these, notifications will contain only those flight items which were actually updated this time.

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

final api_instance = FlightAlertAPIApi();
final subjectType = ; // SubscriptionSubjectType | Subject type
final subjectId = subjectId_example; // String | Subject ID. If `subjectType` is:   * `FlightByNumber`, then this field must be a flight number (with or without spaces, IATA or ICAO, any case formats are acceptable, e.g. KL1395, Klm 1395);  * `FlightByAirportIcao`, then this field must be a 4-character ICAO-code of the airport where flights are operated (e.g.: EHAM, KLAX, UUEE, etc.);
final createWebHookSubscription = CreateWebHookSubscription(); // CreateWebHookSubscription | Command containing parameters for web-hook subscription creation

try {
    final result = api_instance.subscribeWebhook(subjectType, subjectId, createWebHookSubscription);
    print(result);
} catch (e) {
    print('Exception when calling FlightAlertAPIApi->subscribeWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subjectType** | [**SubscriptionSubjectType**](.md)| Subject type | 
 **subjectId** | **String**| Subject ID. If `subjectType` is:   * `FlightByNumber`, then this field must be a flight number (with or without spaces, IATA or ICAO, any case formats are acceptable, e.g. KL1395, Klm 1395);  * `FlightByAirportIcao`, then this field must be a 4-character ICAO-code of the airport where flights are operated (e.g.: EHAM, KLAX, UUEE, etc.); | 
 **createWebHookSubscription** | [**CreateWebHookSubscription**](CreateWebHookSubscription.md)| Command containing parameters for web-hook subscription creation | [optional] 

### Return type

[**SubscriptionContract**](SubscriptionContract.md)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unsubscribeWebhook**
> unsubscribeWebhook(subscriptionId)

Remove web-hook subscription [FREE TIER]

*This endpoitns is a part of Flight alert PUSH API currently powered by webhooks.    If you are running your own web service, you can subscribe to flights by number or airport code.   After that, your HTTP endpoint will be called (notified) whenever the flight information gets   updated.*    Removes the subscription

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

final api_instance = FlightAlertAPIApi();
final subscriptionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Subscription ID

try {
    api_instance.unsubscribeWebhook(subscriptionId);
} catch (e) {
    print('Exception when calling FlightAlertAPIApi->unsubscribeWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **String**| Subscription ID | 

### Return type

void (empty response body)

### Authorization

[X-RapidAPI-Host](../README.md#X-RapidAPI-Host), [X-RapidAPI-Key](../README.md#X-RapidAPI-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


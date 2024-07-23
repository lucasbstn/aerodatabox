# aerodatabox.model.CreateWebHookSubscription

## Load the model package
```dart
import 'package:aerodatabox/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | Destination HTTP-endpoint where notifications will be sent to. Requirements:  * must be a valid public HTTP(S) URL not requiring additional authorization;  * must use standard or alternative HTTP or HTTPS ports (80, 443, 8008, 8080) or any dynamic port greater or equal to 49152;  * must be able to accept HTTP POST request with JSON-formatted body (application/json);  * must respond with one of successful HTTP status codes (2XX) within 10 seconds;  * the endpoint owner must be aware of and consent to receiving notifications at it. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



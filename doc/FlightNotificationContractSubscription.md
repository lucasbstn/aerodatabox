# aerodatabox.model.FlightNotificationContractSubscription

## Load the model package
```dart
import 'package:aerodatabox/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identifier of a subscription.   Use this ID to control the subscription in future (e.g. update or delete). | 
**isActive** | **bool** | Specifies if the subscription is active | 
**createdOnUtc** | [**DateTime**](DateTime.md) | Time (UTC) when subscription was created | 
**subject** | [**SubscriptionSubjectContract**](SubscriptionSubjectContract.md) |  | 
**subscriber** | [**SubscriberContract**](SubscriberContract.md) |  | 
**activateBeforeUtc** | [**DateTime**](DateTime.md) | Time (UTC) before which subscription must be activated (may be applicable to   some non-active newly created subscriptions) | [optional] 
**expiresOnUtc** | [**DateTime**](DateTime.md) | Time (UTC) when subscription expires and will be removed.    If not specified, subscription never expires. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# aerodatabox.model.DelayBracketContract

## Load the model package
```dart
import 'package:aerodatabox/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**num_** | **int** | Count of records subject to a specified delay range | 
**delayedFrom** | **String** | The beginning of the delay range (format: [-]hh:mm:ss).  E.g. in the expresssion \"delayed from 30 to 60 minutes\" stands for \"from 30 minutes\".  Value can be negative (therefore, means early occurence).    Must be preset if \"DelayedTo\" is not specified. | [optional] 
**delayedTo** | **String** | The end of the delay range (format: [-]hh:mm:ss).  E.g. in the expresssion \"delayed from 30 to 60 minutes\" stands for \"to 60 minutes\".  Value can be negative (therefore, means early occurence).    Must be preset if \"DelayedFrom\" is not specified. | [optional] 
**percentage** | **double** | Percentage of records subject to a specified delay range.    Only available when this delay bracket is provided as a part  of a statistical information of a bigger context and the \"total\"  count of records is known. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



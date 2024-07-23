# aerodatabox.model.FlightBatchDelayContract

## Load the model package
```dart
import 'package:aerodatabox/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**numTotal** | **int** | Total number of flights in the the batch (including cancelled) | 
**numQualifiedTotal** | **int** | Total number of flights in the batch, which were used to to calculate the  delay information (including cancelled). Should equal to or less than `NumTotal`.    The closer the value of this property to the value of `NumTotal`, the higher the  reliability of delay information | 
**numCancelled** | **int** | Total amount of flights in the batch | 
**medianDelay** | **String** | Median delay of flights in the batch (format: [-]hh:mm:ss).  Value can be negative (therefore, means early occurence). | [optional] 
**delayIndex** | **double** | Normalized value on scale from 0.0 to 5.0 which corresponds with current amount of delays and cancellations in a given batch of flights (the less - the better). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



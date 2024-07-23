# aerodatabox.model.FlightDelayContract

## Load the model package
```dart
import 'package:aerodatabox/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**airportIcao** | **String** | ICAO code of the airport at which statistics is observed | 
**class_** | [**StatisticClass**](StatisticClass.md) |  | 
**medianDelay** | **String** | Median historic delay of the flight (format: [-]hh:mm:ss).  Value can be negative (therefore, means early occurence). | 
**delayPercentiles** | [**List<PercentileBracketContract>**](PercentileBracketContract.md) | Distribution of historic delays of the flight in percentiles from 5 percentile to 95 percentile in steps of 5 percentile,   allowing for a more detailed analysis of delay patterns beyond simple averages or medians. | [default to const []]
**numConsideredFlights** | **int** | The number of flight movements taken into account to calculate this  statistics. | 
**numFlightsDelayedBrackets** | [**List<DelayBracketContract>**](DelayBracketContract.md) | Brackets containing information more detailed information about  how many flights were delayed/early per specific delay range brackets  (e.g. late from 15 to 30 minutes, from 30 to 60, etc.) | [default to const []]
**fromUtc** | [**DateTime**](DateTime.md) | The beginning of the time range within which flght delay information is calculated (represented in UTC time) | 
**toUtc** | [**DateTime**](DateTime.md) | The end of the time range within which flght delay information is calculated (represented in UTC time) | 
**scheduledHourUtc** | **int** | Hour on which flight is scheduled (represented in UTC).    If provided, it separates the statistics for the same flight departing/arriving at different time of day  on different days within the observed period. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



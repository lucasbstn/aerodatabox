# aerodatabox.model.AircraftContractPagedCollectionContract

## Load the model package
```dart
import 'package:aerodatabox/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**totalCount** | **int** | The total number of items across all pages | 
**pageOffset** | **int** | The offset of the current page of the collection   (number of items skipped before this page) | 
**pageSize** | **int** | Maximum number of items on the current page of the collection  (`Count` cannot be more than this value) | 
**hasNextPage** | **bool** | This value is true when collection has more pages | [readonly] 
**count** | **int** | The number of items in the collection | [readonly] 
**items** | [**List<AircraftContract>**](AircraftContract.md) | The collection of items | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



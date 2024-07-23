//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AircraftContractPagedCollectionContract {
  /// Returns a new [AircraftContractPagedCollectionContract] instance.
  AircraftContractPagedCollectionContract({
    required this.totalCount,
    required this.pageOffset,
    required this.pageSize,
    required this.hasNextPage,
    required this.count,
    this.items = const [],
  });

  /// The total number of items across all pages
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  int totalCount;

  /// The offset of the current page of the collection   (number of items skipped before this page)
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  int pageOffset;

  /// Maximum number of items on the current page of the collection  (`Count` cannot be more than this value)
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  int pageSize;

  /// This value is true when collection has more pages
  bool hasNextPage;

  /// The number of items in the collection
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  int count;

  /// The collection of items
  List<AircraftContract> items;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AircraftContractPagedCollectionContract &&
          other.totalCount == totalCount &&
          other.pageOffset == pageOffset &&
          other.pageSize == pageSize &&
          other.hasNextPage == hasNextPage &&
          other.count == count &&
          _deepEquality.equals(other.items, items);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (totalCount.hashCode) +
      (pageOffset.hashCode) +
      (pageSize.hashCode) +
      (hasNextPage.hashCode) +
      (count.hashCode) +
      (items.hashCode);

  @override
  String toString() =>
      'AircraftContractPagedCollectionContract[totalCount=$totalCount, pageOffset=$pageOffset, pageSize=$pageSize, hasNextPage=$hasNextPage, count=$count, items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'totalCount'] = this.totalCount;
    json[r'pageOffset'] = this.pageOffset;
    json[r'pageSize'] = this.pageSize;
    json[r'hasNextPage'] = this.hasNextPage;
    json[r'count'] = this.count;
    json[r'items'] = this.items;
    return json;
  }

  /// Returns a new [AircraftContractPagedCollectionContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AircraftContractPagedCollectionContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AircraftContractPagedCollectionContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AircraftContractPagedCollectionContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AircraftContractPagedCollectionContract(
        totalCount: mapValueOfType<int>(json, r'totalCount')!,
        pageOffset: mapValueOfType<int>(json, r'pageOffset')!,
        pageSize: mapValueOfType<int>(json, r'pageSize')!,
        hasNextPage: mapValueOfType<bool>(json, r'hasNextPage')!,
        count: mapValueOfType<int>(json, r'count')!,
        items: AircraftContract.listFromJson(json[r'items']),
      );
    }
    return null;
  }

  static List<AircraftContractPagedCollectionContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AircraftContractPagedCollectionContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AircraftContractPagedCollectionContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AircraftContractPagedCollectionContract> mapFromJson(
      dynamic json) {
    final map = <String, AircraftContractPagedCollectionContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            AircraftContractPagedCollectionContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AircraftContractPagedCollectionContract-objects as value to a dart map
  static Map<String, List<AircraftContractPagedCollectionContract>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AircraftContractPagedCollectionContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AircraftContractPagedCollectionContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'totalCount',
    'pageOffset',
    'pageSize',
    'hasNextPage',
    'count',
    'items',
  };
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StringListingAirportContractSearchResultCollectionContract {
  /// Returns a new [StringListingAirportContractSearchResultCollectionContract] instance.
  StringListingAirportContractSearchResultCollectionContract({
    required this.searchBy,
    required this.count,
    this.items = const [],
  });

  /// Search parameter used to find the result.   Please note, it may be different from the actual input provided!
  String searchBy;

  /// The number of items in the collection
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  int count;

  /// The collection of items
  List<ListingAirportContract> items;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StringListingAirportContractSearchResultCollectionContract &&
          other.searchBy == searchBy &&
          other.count == count &&
          _deepEquality.equals(other.items, items);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (searchBy.hashCode) + (count.hashCode) + (items.hashCode);

  @override
  String toString() =>
      'StringListingAirportContractSearchResultCollectionContract[searchBy=$searchBy, count=$count, items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'searchBy'] = this.searchBy;
    json[r'count'] = this.count;
    json[r'items'] = this.items;
    return json;
  }

  /// Returns a new [StringListingAirportContractSearchResultCollectionContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StringListingAirportContractSearchResultCollectionContract? fromJson(
      dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "StringListingAirportContractSearchResultCollectionContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "StringListingAirportContractSearchResultCollectionContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StringListingAirportContractSearchResultCollectionContract(
        searchBy: mapValueOfType<String>(json, r'searchBy')!,
        count: mapValueOfType<int>(json, r'count')!,
        items: ListingAirportContract.listFromJson(json[r'items']),
      );
    }
    return null;
  }

  static List<StringListingAirportContractSearchResultCollectionContract>
      listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result =
        <StringListingAirportContractSearchResultCollectionContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            StringListingAirportContractSearchResultCollectionContract.fromJson(
                row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StringListingAirportContractSearchResultCollectionContract>
      mapFromJson(dynamic json) {
    final map =
        <String, StringListingAirportContractSearchResultCollectionContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            StringListingAirportContractSearchResultCollectionContract.fromJson(
                entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StringListingAirportContractSearchResultCollectionContract-objects as value to a dart map
  static Map<String,
          List<StringListingAirportContractSearchResultCollectionContract>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String,
        List<StringListingAirportContractSearchResultCollectionContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] =
            StringListingAirportContractSearchResultCollectionContract
                .listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'searchBy',
    'count',
    'items',
  };
}

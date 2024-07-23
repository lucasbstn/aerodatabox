//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StringCollectionContract {
  /// Returns a new [StringCollectionContract] instance.
  StringCollectionContract({
    required this.count,
    this.items = const [],
  });

  /// The number of items in the collection
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  int count;

  /// The collection of items
  List<String> items;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StringCollectionContract &&
          other.count == count &&
          _deepEquality.equals(other.items, items);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (count.hashCode) + (items.hashCode);

  @override
  String toString() => 'StringCollectionContract[count=$count, items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'count'] = this.count;
    json[r'items'] = this.items;
    return json;
  }

  /// Returns a new [StringCollectionContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StringCollectionContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "StringCollectionContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "StringCollectionContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StringCollectionContract(
        count: mapValueOfType<int>(json, r'count')!,
        items: json[r'items'] is Iterable
            ? (json[r'items'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<StringCollectionContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <StringCollectionContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StringCollectionContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StringCollectionContract> mapFromJson(dynamic json) {
    final map = <String, StringCollectionContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StringCollectionContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StringCollectionContract-objects as value to a dart map
  static Map<String, List<StringCollectionContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<StringCollectionContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StringCollectionContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'count',
    'items',
  };
}

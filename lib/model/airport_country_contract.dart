//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AirportCountryContract {
  /// Returns a new [AirportCountryContract] instance.
  AirportCountryContract({
    required this.code,
    this.name,
  });

  /// Code
  String code;

  /// Name
  String? name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AirportCountryContract &&
          other.code == code &&
          other.name == name;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (code.hashCode) + (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'AirportCountryContract[code=$code, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'code'] = this.code;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [AirportCountryContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AirportCountryContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AirportCountryContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AirportCountryContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AirportCountryContract(
        code: mapValueOfType<String>(json, r'code')!,
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<AirportCountryContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AirportCountryContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AirportCountryContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AirportCountryContract> mapFromJson(dynamic json) {
    final map = <String, AirportCountryContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AirportCountryContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AirportCountryContract-objects as value to a dart map
  static Map<String, List<AirportCountryContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AirportCountryContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AirportCountryContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
  };
}

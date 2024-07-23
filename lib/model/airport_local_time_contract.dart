//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AirportLocalTimeContract {
  /// Returns a new [AirportLocalTimeContract] instance.
  AirportLocalTimeContract({
    required this.time,
    required this.timeZoneId,
  });

  DateTimeContract time;

  /// Timezone ID of the airport (Olson format)
  String timeZoneId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AirportLocalTimeContract &&
          other.time == time &&
          other.timeZoneId == timeZoneId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (time.hashCode) + (timeZoneId.hashCode);

  @override
  String toString() =>
      'AirportLocalTimeContract[time=$time, timeZoneId=$timeZoneId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'time'] = this.time;
    json[r'timeZoneId'] = this.timeZoneId;
    return json;
  }

  /// Returns a new [AirportLocalTimeContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AirportLocalTimeContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AirportLocalTimeContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AirportLocalTimeContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AirportLocalTimeContract(
        time: DateTimeContract.fromJson(json[r'time'])!,
        timeZoneId: mapValueOfType<String>(json, r'timeZoneId')!,
      );
    }
    return null;
  }

  static List<AirportLocalTimeContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AirportLocalTimeContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AirportLocalTimeContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AirportLocalTimeContract> mapFromJson(dynamic json) {
    final map = <String, AirportLocalTimeContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AirportLocalTimeContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AirportLocalTimeContract-objects as value to a dart map
  static Map<String, List<AirportLocalTimeContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AirportLocalTimeContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AirportLocalTimeContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'time',
    'timeZoneId',
  };
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WindContract {
  /// Returns a new [WindContract] instance.
  WindContract({
    required this.speed,
    required this.direction,
    this.gusts,
  });

  Speed speed;

  Azimuth direction;

  WindContractGusts? gusts;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WindContract &&
          other.speed == speed &&
          other.direction == direction &&
          other.gusts == gusts;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (speed.hashCode) +
      (direction.hashCode) +
      (gusts == null ? 0 : gusts!.hashCode);

  @override
  String toString() =>
      'WindContract[speed=$speed, direction=$direction, gusts=$gusts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'speed'] = this.speed;
    json[r'direction'] = this.direction;
    if (this.gusts != null) {
      json[r'gusts'] = this.gusts;
    } else {
      json[r'gusts'] = null;
    }
    return json;
  }

  /// Returns a new [WindContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WindContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "WindContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "WindContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WindContract(
        speed: Speed.fromJson(json[r'speed'])!,
        direction: Azimuth.fromJson(json[r'direction'])!,
        gusts: WindContractGusts.fromJson(json[r'gusts']),
      );
    }
    return null;
  }

  static List<WindContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WindContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WindContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WindContract> mapFromJson(dynamic json) {
    final map = <String, WindContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WindContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WindContract-objects as value to a dart map
  static Map<String, List<WindContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WindContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WindContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'speed',
    'direction',
  };
}

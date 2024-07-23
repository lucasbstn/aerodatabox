//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GeoCoordinatesContract {
  /// Returns a new [GeoCoordinatesContract] instance.
  GeoCoordinatesContract({
    required this.lat,
    required this.lon,
  });

  /// Latitude, in degrees
  ///
  /// Minimum value: -90
  /// Maximum value: 90
  double lat;

  /// Longitude, in degrees
  ///
  /// Minimum value: -180
  /// Maximum value: 180
  double lon;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GeoCoordinatesContract && other.lat == lat && other.lon == lon;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (lat.hashCode) + (lon.hashCode);

  @override
  String toString() => 'GeoCoordinatesContract[lat=$lat, lon=$lon]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'lat'] = this.lat;
    json[r'lon'] = this.lon;
    return json;
  }

  /// Returns a new [GeoCoordinatesContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GeoCoordinatesContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GeoCoordinatesContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GeoCoordinatesContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GeoCoordinatesContract(
        lat: mapValueOfType<double>(json, r'lat')!,
        lon: mapValueOfType<double>(json, r'lon')!,
      );
    }
    return null;
  }

  static List<GeoCoordinatesContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GeoCoordinatesContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GeoCoordinatesContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GeoCoordinatesContract> mapFromJson(dynamic json) {
    final map = <String, GeoCoordinatesContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GeoCoordinatesContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GeoCoordinatesContract-objects as value to a dart map
  static Map<String, List<GeoCoordinatesContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GeoCoordinatesContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GeoCoordinatesContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'lat',
    'lon',
  };
}

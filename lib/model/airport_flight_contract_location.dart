//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AirportFlightContractLocation {
  /// Returns a new [AirportFlightContractLocation] instance.
  AirportFlightContractLocation({
    required this.pressureAltitude,
    required this.altitude,
    required this.pressure,
    required this.groundSpeed,
    required this.trueTrack,
    required this.reportedAtUtc,
    required this.lat,
    required this.lon,
  });

  Distance pressureAltitude;

  Distance altitude;

  Pressure pressure;

  Speed groundSpeed;

  Azimuth trueTrack;

  /// Time (UTC) of when this positional data was reported
  DateTime reportedAtUtc;

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
      other is AirportFlightContractLocation &&
          other.pressureAltitude == pressureAltitude &&
          other.altitude == altitude &&
          other.pressure == pressure &&
          other.groundSpeed == groundSpeed &&
          other.trueTrack == trueTrack &&
          other.reportedAtUtc == reportedAtUtc &&
          other.lat == lat &&
          other.lon == lon;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (pressureAltitude.hashCode) +
      (altitude.hashCode) +
      (pressure.hashCode) +
      (groundSpeed.hashCode) +
      (trueTrack.hashCode) +
      (reportedAtUtc.hashCode) +
      (lat.hashCode) +
      (lon.hashCode);

  @override
  String toString() =>
      'AirportFlightContractLocation[pressureAltitude=$pressureAltitude, altitude=$altitude, pressure=$pressure, groundSpeed=$groundSpeed, trueTrack=$trueTrack, reportedAtUtc=$reportedAtUtc, lat=$lat, lon=$lon]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'pressureAltitude'] = this.pressureAltitude;
    json[r'altitude'] = this.altitude;
    json[r'pressure'] = this.pressure;
    json[r'groundSpeed'] = this.groundSpeed;
    json[r'trueTrack'] = this.trueTrack;
    json[r'reportedAtUtc'] = this.reportedAtUtc.toUtc().toIso8601String();
    json[r'lat'] = this.lat;
    json[r'lon'] = this.lon;
    return json;
  }

  /// Returns a new [AirportFlightContractLocation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AirportFlightContractLocation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AirportFlightContractLocation[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AirportFlightContractLocation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AirportFlightContractLocation(
        pressureAltitude: Distance.fromJson(json[r'pressureAltitude'])!,
        altitude: Distance.fromJson(json[r'altitude'])!,
        pressure: Pressure.fromJson(json[r'pressure'])!,
        groundSpeed: Speed.fromJson(json[r'groundSpeed'])!,
        trueTrack: Azimuth.fromJson(json[r'trueTrack'])!,
        reportedAtUtc: mapDateTime(json, r'reportedAtUtc', r'')!,
        lat: mapValueOfType<double>(json, r'lat')!,
        lon: mapValueOfType<double>(json, r'lon')!,
      );
    }
    return null;
  }

  static List<AirportFlightContractLocation> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AirportFlightContractLocation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AirportFlightContractLocation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AirportFlightContractLocation> mapFromJson(dynamic json) {
    final map = <String, AirportFlightContractLocation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AirportFlightContractLocation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AirportFlightContractLocation-objects as value to a dart map
  static Map<String, List<AirportFlightContractLocation>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AirportFlightContractLocation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AirportFlightContractLocation.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'pressureAltitude',
    'altitude',
    'pressure',
    'groundSpeed',
    'trueTrack',
    'reportedAtUtc',
    'lat',
    'lon',
  };
}

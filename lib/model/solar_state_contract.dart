//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SolarStateContract {
  /// Returns a new [SolarStateContract] instance.
  SolarStateContract({
    required this.location,
    required this.sunElevation,
    required this.sunAzimuth,
    this.dayTime = const [],
    this.dawnAstronomical,
    this.dawnNautical,
    this.dawnCivil,
    this.sunrise,
    this.noonTrue,
    this.sunset,
    this.duskCivil,
    this.duskNautical,
    this.duskAstronomical,
  });

  GeoCoordinatesContract location;

  Angle sunElevation;

  Azimuth sunAzimuth;

  /// Daytime states
  List<DayTime> dayTime;

  SolarStateContractDawnAstronomical? dawnAstronomical;

  SolarStateContractDawnNautical? dawnNautical;

  SolarStateContractDawnCivil? dawnCivil;

  SolarStateContractSunrise? sunrise;

  SolarStateContractNoonTrue? noonTrue;

  SolarStateContractSunset? sunset;

  SolarStateContractDuskCivil? duskCivil;

  SolarStateContractDuskNautical? duskNautical;

  SolarStateContractDuskAstronomical? duskAstronomical;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SolarStateContract &&
          other.location == location &&
          other.sunElevation == sunElevation &&
          other.sunAzimuth == sunAzimuth &&
          _deepEquality.equals(other.dayTime, dayTime) &&
          other.dawnAstronomical == dawnAstronomical &&
          other.dawnNautical == dawnNautical &&
          other.dawnCivil == dawnCivil &&
          other.sunrise == sunrise &&
          other.noonTrue == noonTrue &&
          other.sunset == sunset &&
          other.duskCivil == duskCivil &&
          other.duskNautical == duskNautical &&
          other.duskAstronomical == duskAstronomical;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (location.hashCode) +
      (sunElevation.hashCode) +
      (sunAzimuth.hashCode) +
      (dayTime.hashCode) +
      (dawnAstronomical == null ? 0 : dawnAstronomical!.hashCode) +
      (dawnNautical == null ? 0 : dawnNautical!.hashCode) +
      (dawnCivil == null ? 0 : dawnCivil!.hashCode) +
      (sunrise == null ? 0 : sunrise!.hashCode) +
      (noonTrue == null ? 0 : noonTrue!.hashCode) +
      (sunset == null ? 0 : sunset!.hashCode) +
      (duskCivil == null ? 0 : duskCivil!.hashCode) +
      (duskNautical == null ? 0 : duskNautical!.hashCode) +
      (duskAstronomical == null ? 0 : duskAstronomical!.hashCode);

  @override
  String toString() =>
      'SolarStateContract[location=$location, sunElevation=$sunElevation, sunAzimuth=$sunAzimuth, dayTime=$dayTime, dawnAstronomical=$dawnAstronomical, dawnNautical=$dawnNautical, dawnCivil=$dawnCivil, sunrise=$sunrise, noonTrue=$noonTrue, sunset=$sunset, duskCivil=$duskCivil, duskNautical=$duskNautical, duskAstronomical=$duskAstronomical]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'location'] = this.location;
    json[r'sunElevation'] = this.sunElevation;
    json[r'sunAzimuth'] = this.sunAzimuth;
    json[r'dayTime'] = this.dayTime;
    if (this.dawnAstronomical != null) {
      json[r'dawnAstronomical'] = this.dawnAstronomical;
    } else {
      json[r'dawnAstronomical'] = null;
    }
    if (this.dawnNautical != null) {
      json[r'dawnNautical'] = this.dawnNautical;
    } else {
      json[r'dawnNautical'] = null;
    }
    if (this.dawnCivil != null) {
      json[r'dawnCivil'] = this.dawnCivil;
    } else {
      json[r'dawnCivil'] = null;
    }
    if (this.sunrise != null) {
      json[r'sunrise'] = this.sunrise;
    } else {
      json[r'sunrise'] = null;
    }
    if (this.noonTrue != null) {
      json[r'noonTrue'] = this.noonTrue;
    } else {
      json[r'noonTrue'] = null;
    }
    if (this.sunset != null) {
      json[r'sunset'] = this.sunset;
    } else {
      json[r'sunset'] = null;
    }
    if (this.duskCivil != null) {
      json[r'duskCivil'] = this.duskCivil;
    } else {
      json[r'duskCivil'] = null;
    }
    if (this.duskNautical != null) {
      json[r'duskNautical'] = this.duskNautical;
    } else {
      json[r'duskNautical'] = null;
    }
    if (this.duskAstronomical != null) {
      json[r'duskAstronomical'] = this.duskAstronomical;
    } else {
      json[r'duskAstronomical'] = null;
    }
    return json;
  }

  /// Returns a new [SolarStateContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SolarStateContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SolarStateContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SolarStateContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SolarStateContract(
        location: GeoCoordinatesContract.fromJson(json[r'location'])!,
        sunElevation: Angle.fromJson(json[r'sunElevation'])!,
        sunAzimuth: Azimuth.fromJson(json[r'sunAzimuth'])!,
        dayTime: DayTime.listFromJson(json[r'dayTime']),
        dawnAstronomical: SolarStateContractDawnAstronomical.fromJson(
            json[r'dawnAstronomical']),
        dawnNautical:
            SolarStateContractDawnNautical.fromJson(json[r'dawnNautical']),
        dawnCivil: SolarStateContractDawnCivil.fromJson(json[r'dawnCivil']),
        sunrise: SolarStateContractSunrise.fromJson(json[r'sunrise']),
        noonTrue: SolarStateContractNoonTrue.fromJson(json[r'noonTrue']),
        sunset: SolarStateContractSunset.fromJson(json[r'sunset']),
        duskCivil: SolarStateContractDuskCivil.fromJson(json[r'duskCivil']),
        duskNautical:
            SolarStateContractDuskNautical.fromJson(json[r'duskNautical']),
        duskAstronomical: SolarStateContractDuskAstronomical.fromJson(
            json[r'duskAstronomical']),
      );
    }
    return null;
  }

  static List<SolarStateContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SolarStateContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SolarStateContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SolarStateContract> mapFromJson(dynamic json) {
    final map = <String, SolarStateContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SolarStateContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SolarStateContract-objects as value to a dart map
  static Map<String, List<SolarStateContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SolarStateContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SolarStateContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'location',
    'sunElevation',
    'sunAzimuth',
    'dayTime',
  };
}

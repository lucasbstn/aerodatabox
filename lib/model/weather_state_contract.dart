//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WeatherStateContract {
  /// Returns a new [WeatherStateContract] instance.
  WeatherStateContract({
    required this.location,
    required this.validFrom,
    required this.validTo,
    this.airTemperature,
    this.dewPoint,
    this.pressure,
    this.wind,
    this.visibility,
    this.report,
    this.cloudBase,
    this.cloudCover,
    this.phenomenaGroups = const [],
  });

  GeoCoordinatesContract location;

  DateTimeContract validFrom;

  DateTimeContract validTo;

  WeatherStateContractAirTemperature? airTemperature;

  WeatherStateContractDewPoint? dewPoint;

  WeatherStateContractPressure? pressure;

  WeatherStateContractWind? wind;

  WeatherStateContractVisibility? visibility;

  /// Aviation weather report   (typically a METAR or TAF string, as applicable)
  String? report;

  WeatherStateContractCloudBase? cloudBase;

  CloudCover? cloudCover;

  /// Weather phenomena groups
  List<PhenomenaGroup>? phenomenaGroups;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherStateContract &&
          other.location == location &&
          other.validFrom == validFrom &&
          other.validTo == validTo &&
          other.airTemperature == airTemperature &&
          other.dewPoint == dewPoint &&
          other.pressure == pressure &&
          other.wind == wind &&
          other.visibility == visibility &&
          other.report == report &&
          other.cloudBase == cloudBase &&
          other.cloudCover == cloudCover &&
          _deepEquality.equals(other.phenomenaGroups, phenomenaGroups);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (location.hashCode) +
      (validFrom.hashCode) +
      (validTo.hashCode) +
      (airTemperature == null ? 0 : airTemperature!.hashCode) +
      (dewPoint == null ? 0 : dewPoint!.hashCode) +
      (pressure == null ? 0 : pressure!.hashCode) +
      (wind == null ? 0 : wind!.hashCode) +
      (visibility == null ? 0 : visibility!.hashCode) +
      (report == null ? 0 : report!.hashCode) +
      (cloudBase == null ? 0 : cloudBase!.hashCode) +
      (cloudCover == null ? 0 : cloudCover!.hashCode) +
      (phenomenaGroups == null ? 0 : phenomenaGroups!.hashCode);

  @override
  String toString() =>
      'WeatherStateContract[location=$location, validFrom=$validFrom, validTo=$validTo, airTemperature=$airTemperature, dewPoint=$dewPoint, pressure=$pressure, wind=$wind, visibility=$visibility, report=$report, cloudBase=$cloudBase, cloudCover=$cloudCover, phenomenaGroups=$phenomenaGroups]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'location'] = this.location;
    json[r'validFrom'] = this.validFrom;
    json[r'validTo'] = this.validTo;
    if (this.airTemperature != null) {
      json[r'airTemperature'] = this.airTemperature;
    } else {
      json[r'airTemperature'] = null;
    }
    if (this.dewPoint != null) {
      json[r'dewPoint'] = this.dewPoint;
    } else {
      json[r'dewPoint'] = null;
    }
    if (this.pressure != null) {
      json[r'pressure'] = this.pressure;
    } else {
      json[r'pressure'] = null;
    }
    if (this.wind != null) {
      json[r'wind'] = this.wind;
    } else {
      json[r'wind'] = null;
    }
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
    }
    if (this.report != null) {
      json[r'report'] = this.report;
    } else {
      json[r'report'] = null;
    }
    if (this.cloudBase != null) {
      json[r'cloudBase'] = this.cloudBase;
    } else {
      json[r'cloudBase'] = null;
    }
    if (this.cloudCover != null) {
      json[r'cloudCover'] = this.cloudCover;
    } else {
      json[r'cloudCover'] = null;
    }
    if (this.phenomenaGroups != null) {
      json[r'phenomenaGroups'] = this.phenomenaGroups;
    } else {
      json[r'phenomenaGroups'] = null;
    }
    return json;
  }

  /// Returns a new [WeatherStateContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WeatherStateContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "WeatherStateContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "WeatherStateContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WeatherStateContract(
        location: GeoCoordinatesContract.fromJson(json[r'location'])!,
        validFrom: DateTimeContract.fromJson(json[r'validFrom'])!,
        validTo: DateTimeContract.fromJson(json[r'validTo'])!,
        airTemperature: WeatherStateContractAirTemperature.fromJson(
            json[r'airTemperature']),
        dewPoint: WeatherStateContractDewPoint.fromJson(json[r'dewPoint']),
        pressure: WeatherStateContractPressure.fromJson(json[r'pressure']),
        wind: WeatherStateContractWind.fromJson(json[r'wind']),
        visibility:
            WeatherStateContractVisibility.fromJson(json[r'visibility']),
        report: mapValueOfType<String>(json, r'report'),
        cloudBase: WeatherStateContractCloudBase.fromJson(json[r'cloudBase']),
        cloudCover: CloudCover.fromJson(json[r'cloudCover']),
        phenomenaGroups: PhenomenaGroup.listFromJson(json[r'phenomenaGroups']),
      );
    }
    return null;
  }

  static List<WeatherStateContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WeatherStateContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WeatherStateContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WeatherStateContract> mapFromJson(dynamic json) {
    final map = <String, WeatherStateContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WeatherStateContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WeatherStateContract-objects as value to a dart map
  static Map<String, List<WeatherStateContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WeatherStateContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WeatherStateContract.listFromJson(
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
    'validFrom',
    'validTo',
  };
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AirportContract {
  /// Returns a new [AirportContract] instance.
  AirportContract({
    required this.fullName,
    required this.location,
    required this.elevation,
    required this.country,
    required this.continent,
    required this.timeZone,
    required this.urls,
    this.icao,
    this.iata,
    this.localCode,
    this.shortName,
    this.municipalityName,
    this.runways = const [],
    this.currentTime,
  });

  /// Full name of the airport (derived from own airport name and municipality name)
  String fullName;

  GeoCoordinatesContract location;

  Distance elevation;

  AirportCountryContract country;

  AirportContinentContract continent;

  /// Time zone of the airport in Olson format (e.g. \"Europe/Amsterdam\")
  String timeZone;

  AirportContractUrls urls;

  /// ICAO code of the airport
  String? icao;

  /// IATA code of the airport
  String? iata;

  /// Code of the airport within the local or national codification system
  String? localCode;

  /// Shortened name of the airport
  String? shortName;

  /// Name of the municipality this airport belongs to
  String? municipalityName;

  /// List of runway information, if requested
  List<RunwayContract>? runways;

  AirportContractCurrentTime? currentTime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AirportContract &&
          other.fullName == fullName &&
          other.location == location &&
          other.elevation == elevation &&
          other.country == country &&
          other.continent == continent &&
          other.timeZone == timeZone &&
          other.urls == urls &&
          other.icao == icao &&
          other.iata == iata &&
          other.localCode == localCode &&
          other.shortName == shortName &&
          other.municipalityName == municipalityName &&
          _deepEquality.equals(other.runways, runways) &&
          other.currentTime == currentTime;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (fullName.hashCode) +
      (location.hashCode) +
      (elevation.hashCode) +
      (country.hashCode) +
      (continent.hashCode) +
      (timeZone.hashCode) +
      (urls.hashCode) +
      (icao == null ? 0 : icao!.hashCode) +
      (iata == null ? 0 : iata!.hashCode) +
      (localCode == null ? 0 : localCode!.hashCode) +
      (shortName == null ? 0 : shortName!.hashCode) +
      (municipalityName == null ? 0 : municipalityName!.hashCode) +
      (runways == null ? 0 : runways!.hashCode) +
      (currentTime == null ? 0 : currentTime!.hashCode);

  @override
  String toString() =>
      'AirportContract[fullName=$fullName, location=$location, elevation=$elevation, country=$country, continent=$continent, timeZone=$timeZone, urls=$urls, icao=$icao, iata=$iata, localCode=$localCode, shortName=$shortName, municipalityName=$municipalityName, runways=$runways, currentTime=$currentTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'fullName'] = this.fullName;
    json[r'location'] = this.location;
    json[r'elevation'] = this.elevation;
    json[r'country'] = this.country;
    json[r'continent'] = this.continent;
    json[r'timeZone'] = this.timeZone;
    json[r'urls'] = this.urls;
    if (this.icao != null) {
      json[r'icao'] = this.icao;
    } else {
      json[r'icao'] = null;
    }
    if (this.iata != null) {
      json[r'iata'] = this.iata;
    } else {
      json[r'iata'] = null;
    }
    if (this.localCode != null) {
      json[r'localCode'] = this.localCode;
    } else {
      json[r'localCode'] = null;
    }
    if (this.shortName != null) {
      json[r'shortName'] = this.shortName;
    } else {
      json[r'shortName'] = null;
    }
    if (this.municipalityName != null) {
      json[r'municipalityName'] = this.municipalityName;
    } else {
      json[r'municipalityName'] = null;
    }
    if (this.runways != null) {
      json[r'runways'] = this.runways;
    } else {
      json[r'runways'] = null;
    }
    if (this.currentTime != null) {
      json[r'currentTime'] = this.currentTime;
    } else {
      json[r'currentTime'] = null;
    }
    return json;
  }

  /// Returns a new [AirportContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AirportContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AirportContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AirportContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AirportContract(
        fullName: mapValueOfType<String>(json, r'fullName')!,
        location: GeoCoordinatesContract.fromJson(json[r'location'])!,
        elevation: Distance.fromJson(json[r'elevation'])!,
        country: AirportCountryContract.fromJson(json[r'country'])!,
        continent: AirportContinentContract.fromJson(json[r'continent'])!,
        timeZone: mapValueOfType<String>(json, r'timeZone')!,
        urls: AirportContractUrls.fromJson(json[r'urls'])!,
        icao: mapValueOfType<String>(json, r'icao'),
        iata: mapValueOfType<String>(json, r'iata'),
        localCode: mapValueOfType<String>(json, r'localCode'),
        shortName: mapValueOfType<String>(json, r'shortName'),
        municipalityName: mapValueOfType<String>(json, r'municipalityName'),
        runways: RunwayContract.listFromJson(json[r'runways']),
        currentTime: AirportContractCurrentTime.fromJson(json[r'currentTime']),
      );
    }
    return null;
  }

  static List<AirportContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AirportContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AirportContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AirportContract> mapFromJson(dynamic json) {
    final map = <String, AirportContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AirportContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AirportContract-objects as value to a dart map
  static Map<String, List<AirportContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AirportContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AirportContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'fullName',
    'location',
    'elevation',
    'country',
    'continent',
    'timeZone',
    'urls',
  };
}

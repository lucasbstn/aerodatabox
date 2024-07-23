//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListingAirportContract {
  /// Returns a new [ListingAirportContract] instance.
  ListingAirportContract({
    required this.name,
    this.icao,
    this.iata,
    this.localCode,
    this.shortName,
    this.municipalityName,
    this.location,
    this.countryCode,
    this.timeZone,
  });

  /// Name of the airport
  String name;

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

  ListingAirportContractLocation? location;

  /// Two-letter country code of the airport
  String? countryCode;

  /// Time zone of the airport in Olson format (e.g. \"Europe/Amsterdam\")
  String? timeZone;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListingAirportContract &&
          other.name == name &&
          other.icao == icao &&
          other.iata == iata &&
          other.localCode == localCode &&
          other.shortName == shortName &&
          other.municipalityName == municipalityName &&
          other.location == location &&
          other.countryCode == countryCode &&
          other.timeZone == timeZone;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name.hashCode) +
      (icao == null ? 0 : icao!.hashCode) +
      (iata == null ? 0 : iata!.hashCode) +
      (localCode == null ? 0 : localCode!.hashCode) +
      (shortName == null ? 0 : shortName!.hashCode) +
      (municipalityName == null ? 0 : municipalityName!.hashCode) +
      (location == null ? 0 : location!.hashCode) +
      (countryCode == null ? 0 : countryCode!.hashCode) +
      (timeZone == null ? 0 : timeZone!.hashCode);

  @override
  String toString() =>
      'ListingAirportContract[name=$name, icao=$icao, iata=$iata, localCode=$localCode, shortName=$shortName, municipalityName=$municipalityName, location=$location, countryCode=$countryCode, timeZone=$timeZone]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'name'] = this.name;
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
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.countryCode != null) {
      json[r'countryCode'] = this.countryCode;
    } else {
      json[r'countryCode'] = null;
    }
    if (this.timeZone != null) {
      json[r'timeZone'] = this.timeZone;
    } else {
      json[r'timeZone'] = null;
    }
    return json;
  }

  /// Returns a new [ListingAirportContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListingAirportContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ListingAirportContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ListingAirportContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListingAirportContract(
        name: mapValueOfType<String>(json, r'name')!,
        icao: mapValueOfType<String>(json, r'icao'),
        iata: mapValueOfType<String>(json, r'iata'),
        localCode: mapValueOfType<String>(json, r'localCode'),
        shortName: mapValueOfType<String>(json, r'shortName'),
        municipalityName: mapValueOfType<String>(json, r'municipalityName'),
        location: ListingAirportContractLocation.fromJson(json[r'location']),
        countryCode: mapValueOfType<String>(json, r'countryCode'),
        timeZone: mapValueOfType<String>(json, r'timeZone'),
      );
    }
    return null;
  }

  static List<ListingAirportContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ListingAirportContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListingAirportContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListingAirportContract> mapFromJson(dynamic json) {
    final map = <String, ListingAirportContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListingAirportContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListingAirportContract-objects as value to a dart map
  static Map<String, List<ListingAirportContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ListingAirportContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListingAirportContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

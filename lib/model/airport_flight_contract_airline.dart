//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AirportFlightContractAirline {
  /// Returns a new [AirportFlightContractAirline] instance.
  AirportFlightContractAirline({
    required this.name,
    this.iata,
    this.icao,
  });

  /// Airline name
  String name;

  /// IATA code of the airline
  String? iata;

  /// ICAO code of the airline
  String? icao;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AirportFlightContractAirline &&
          other.name == name &&
          other.iata == iata &&
          other.icao == icao;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name.hashCode) +
      (iata == null ? 0 : iata!.hashCode) +
      (icao == null ? 0 : icao!.hashCode);

  @override
  String toString() =>
      'AirportFlightContractAirline[name=$name, iata=$iata, icao=$icao]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'name'] = this.name;
    if (this.iata != null) {
      json[r'iata'] = this.iata;
    } else {
      json[r'iata'] = null;
    }
    if (this.icao != null) {
      json[r'icao'] = this.icao;
    } else {
      json[r'icao'] = null;
    }
    return json;
  }

  /// Returns a new [AirportFlightContractAirline] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AirportFlightContractAirline? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AirportFlightContractAirline[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AirportFlightContractAirline[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AirportFlightContractAirline(
        name: mapValueOfType<String>(json, r'name')!,
        iata: mapValueOfType<String>(json, r'iata'),
        icao: mapValueOfType<String>(json, r'icao'),
      );
    }
    return null;
  }

  static List<AirportFlightContractAirline> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AirportFlightContractAirline>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AirportFlightContractAirline.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AirportFlightContractAirline> mapFromJson(dynamic json) {
    final map = <String, AirportFlightContractAirline>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AirportFlightContractAirline.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AirportFlightContractAirline-objects as value to a dart map
  static Map<String, List<AirportFlightContractAirline>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AirportFlightContractAirline>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AirportFlightContractAirline.listFromJson(
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

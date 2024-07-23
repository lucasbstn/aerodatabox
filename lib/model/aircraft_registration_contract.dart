//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AircraftRegistrationContract {
  /// Returns a new [AircraftRegistrationContract] instance.
  AircraftRegistrationContract({
    required this.reg,
    required this.active,
    this.hexIcao,
    this.airlineName,
    this.registrationDate,
  });

  /// Tail-number of the aircraft
  String reg;

  /// Indicator if aircraft is operational under this registration
  bool active;

  /// ICAO 24 bit Mode-S hexadecimal transponder address
  String? hexIcao;

  /// Name of the airline operating the aircraft
  String? airlineName;

  /// Date of assigning current registration
  DateTime? registrationDate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AircraftRegistrationContract &&
          other.reg == reg &&
          other.active == active &&
          other.hexIcao == hexIcao &&
          other.airlineName == airlineName &&
          other.registrationDate == registrationDate;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (reg.hashCode) +
      (active.hashCode) +
      (hexIcao == null ? 0 : hexIcao!.hashCode) +
      (airlineName == null ? 0 : airlineName!.hashCode) +
      (registrationDate == null ? 0 : registrationDate!.hashCode);

  @override
  String toString() =>
      'AircraftRegistrationContract[reg=$reg, active=$active, hexIcao=$hexIcao, airlineName=$airlineName, registrationDate=$registrationDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'reg'] = this.reg;
    json[r'active'] = this.active;
    if (this.hexIcao != null) {
      json[r'hexIcao'] = this.hexIcao;
    } else {
      json[r'hexIcao'] = null;
    }
    if (this.airlineName != null) {
      json[r'airlineName'] = this.airlineName;
    } else {
      json[r'airlineName'] = null;
    }
    if (this.registrationDate != null) {
      json[r'registrationDate'] =
          this.registrationDate!.toUtc().toIso8601String();
    } else {
      json[r'registrationDate'] = null;
    }
    return json;
  }

  /// Returns a new [AircraftRegistrationContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AircraftRegistrationContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AircraftRegistrationContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AircraftRegistrationContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AircraftRegistrationContract(
        reg: mapValueOfType<String>(json, r'reg')!,
        active: mapValueOfType<bool>(json, r'active')!,
        hexIcao: mapValueOfType<String>(json, r'hexIcao'),
        airlineName: mapValueOfType<String>(json, r'airlineName'),
        registrationDate: mapDateTime(json, r'registrationDate', r''),
      );
    }
    return null;
  }

  static List<AircraftRegistrationContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AircraftRegistrationContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AircraftRegistrationContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AircraftRegistrationContract> mapFromJson(dynamic json) {
    final map = <String, AircraftRegistrationContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AircraftRegistrationContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AircraftRegistrationContract-objects as value to a dart map
  static Map<String, List<AircraftRegistrationContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AircraftRegistrationContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AircraftRegistrationContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'reg',
    'active',
  };
}

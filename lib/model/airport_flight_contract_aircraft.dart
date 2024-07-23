//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AirportFlightContractAircraft {
  /// Returns a new [AirportFlightContractAircraft] instance.
  AirportFlightContractAircraft({
    this.reg,
    this.modeS,
    this.model,
    this.image,
  });

  /// Tail-number of the aircraft
  String? reg;

  /// ICAO 24 bit Mode-S hexadecimal transponder address
  String? modeS;

  /// Aircraft name and model
  String? model;

  FlightAircraftContractImage? image;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AirportFlightContractAircraft &&
          other.reg == reg &&
          other.modeS == modeS &&
          other.model == model &&
          other.image == image;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (reg == null ? 0 : reg!.hashCode) +
      (modeS == null ? 0 : modeS!.hashCode) +
      (model == null ? 0 : model!.hashCode) +
      (image == null ? 0 : image!.hashCode);

  @override
  String toString() =>
      'AirportFlightContractAircraft[reg=$reg, modeS=$modeS, model=$model, image=$image]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.reg != null) {
      json[r'reg'] = this.reg;
    } else {
      json[r'reg'] = null;
    }
    if (this.modeS != null) {
      json[r'modeS'] = this.modeS;
    } else {
      json[r'modeS'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    return json;
  }

  /// Returns a new [AirportFlightContractAircraft] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AirportFlightContractAircraft? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AirportFlightContractAircraft[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AirportFlightContractAircraft[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AirportFlightContractAircraft(
        reg: mapValueOfType<String>(json, r'reg'),
        modeS: mapValueOfType<String>(json, r'modeS'),
        model: mapValueOfType<String>(json, r'model'),
        image: FlightAircraftContractImage.fromJson(json[r'image']),
      );
    }
    return null;
  }

  static List<AirportFlightContractAircraft> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AirportFlightContractAircraft>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AirportFlightContractAircraft.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AirportFlightContractAircraft> mapFromJson(dynamic json) {
    final map = <String, AirportFlightContractAircraft>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AirportFlightContractAircraft.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AirportFlightContractAircraft-objects as value to a dart map
  static Map<String, List<AirportFlightContractAircraft>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AirportFlightContractAircraft>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AirportFlightContractAircraft.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}

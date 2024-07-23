//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AirportDelayContract {
  /// Returns a new [AirportDelayContract] instance.
  AirportDelayContract({
    required this.airportIcao,
    required this.from,
    required this.to,
    required this.departuresDelayInformation,
    required this.arrivalsDelayInformation,
  });

  /// Airport ICAO code
  String airportIcao;

  DateTimeContract from;

  DateTimeContract to;

  FlightBatchDelayContract departuresDelayInformation;

  FlightBatchDelayContract arrivalsDelayInformation;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AirportDelayContract &&
          other.airportIcao == airportIcao &&
          other.from == from &&
          other.to == to &&
          other.departuresDelayInformation == departuresDelayInformation &&
          other.arrivalsDelayInformation == arrivalsDelayInformation;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (airportIcao.hashCode) +
      (from.hashCode) +
      (to.hashCode) +
      (departuresDelayInformation.hashCode) +
      (arrivalsDelayInformation.hashCode);

  @override
  String toString() =>
      'AirportDelayContract[airportIcao=$airportIcao, from=$from, to=$to, departuresDelayInformation=$departuresDelayInformation, arrivalsDelayInformation=$arrivalsDelayInformation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'airportIcao'] = this.airportIcao;
    json[r'from'] = this.from;
    json[r'to'] = this.to;
    json[r'departuresDelayInformation'] = this.departuresDelayInformation;
    json[r'arrivalsDelayInformation'] = this.arrivalsDelayInformation;
    return json;
  }

  /// Returns a new [AirportDelayContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AirportDelayContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AirportDelayContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AirportDelayContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AirportDelayContract(
        airportIcao: mapValueOfType<String>(json, r'airportIcao')!,
        from: DateTimeContract.fromJson(json[r'from'])!,
        to: DateTimeContract.fromJson(json[r'to'])!,
        departuresDelayInformation: FlightBatchDelayContract.fromJson(
            json[r'departuresDelayInformation'])!,
        arrivalsDelayInformation: FlightBatchDelayContract.fromJson(
            json[r'arrivalsDelayInformation'])!,
      );
    }
    return null;
  }

  static List<AirportDelayContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AirportDelayContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AirportDelayContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AirportDelayContract> mapFromJson(dynamic json) {
    final map = <String, AirportDelayContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AirportDelayContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AirportDelayContract-objects as value to a dart map
  static Map<String, List<AirportDelayContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AirportDelayContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AirportDelayContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'airportIcao',
    'from',
    'to',
    'departuresDelayInformation',
    'arrivalsDelayInformation',
  };
}

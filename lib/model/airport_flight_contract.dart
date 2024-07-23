//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AirportFlightContract {
  /// Returns a new [AirportFlightContract] instance.
  AirportFlightContract({
    required this.number,
    required this.status,
    required this.codeshareStatus,
    required this.isCargo,
    this.movement,
    this.departure,
    this.arrival,
    this.callSign,
    this.aircraft,
    this.airline,
    this.location,
  });

  /// Flight Number
  String number;

  FlightStatus status;

  CodeshareStatus codeshareStatus;

  /// Is cargo flight
  bool isCargo;

  AirportFlightContractMovement? movement;

  AirportFlightContractDeparture? departure;

  AirportFlightContractArrival? arrival;

  /// ATC call-sign of the flight
  String? callSign;

  AirportFlightContractAircraft? aircraft;

  AirportFlightContractAirline? airline;

  AirportFlightContractLocation? location;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AirportFlightContract &&
          other.number == number &&
          other.status == status &&
          other.codeshareStatus == codeshareStatus &&
          other.isCargo == isCargo &&
          other.movement == movement &&
          other.departure == departure &&
          other.arrival == arrival &&
          other.callSign == callSign &&
          other.aircraft == aircraft &&
          other.airline == airline &&
          other.location == location;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (number.hashCode) +
      (status.hashCode) +
      (codeshareStatus.hashCode) +
      (isCargo.hashCode) +
      (movement == null ? 0 : movement!.hashCode) +
      (departure == null ? 0 : departure!.hashCode) +
      (arrival == null ? 0 : arrival!.hashCode) +
      (callSign == null ? 0 : callSign!.hashCode) +
      (aircraft == null ? 0 : aircraft!.hashCode) +
      (airline == null ? 0 : airline!.hashCode) +
      (location == null ? 0 : location!.hashCode);

  @override
  String toString() =>
      'AirportFlightContract[number=$number, status=$status, codeshareStatus=$codeshareStatus, isCargo=$isCargo, movement=$movement, departure=$departure, arrival=$arrival, callSign=$callSign, aircraft=$aircraft, airline=$airline, location=$location]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'number'] = this.number;
    json[r'status'] = this.status;
    json[r'codeshareStatus'] = this.codeshareStatus;
    json[r'isCargo'] = this.isCargo;
    if (this.movement != null) {
      json[r'movement'] = this.movement;
    } else {
      json[r'movement'] = null;
    }
    if (this.departure != null) {
      json[r'departure'] = this.departure;
    } else {
      json[r'departure'] = null;
    }
    if (this.arrival != null) {
      json[r'arrival'] = this.arrival;
    } else {
      json[r'arrival'] = null;
    }
    if (this.callSign != null) {
      json[r'callSign'] = this.callSign;
    } else {
      json[r'callSign'] = null;
    }
    if (this.aircraft != null) {
      json[r'aircraft'] = this.aircraft;
    } else {
      json[r'aircraft'] = null;
    }
    if (this.airline != null) {
      json[r'airline'] = this.airline;
    } else {
      json[r'airline'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    return json;
  }

  /// Returns a new [AirportFlightContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AirportFlightContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AirportFlightContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AirportFlightContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AirportFlightContract(
        number: mapValueOfType<String>(json, r'number')!,
        status: FlightStatus.fromJson(json[r'status'])!,
        codeshareStatus: CodeshareStatus.fromJson(json[r'codeshareStatus'])!,
        isCargo: mapValueOfType<bool>(json, r'isCargo')!,
        movement: AirportFlightContractMovement.fromJson(json[r'movement']),
        departure: AirportFlightContractDeparture.fromJson(json[r'departure']),
        arrival: AirportFlightContractArrival.fromJson(json[r'arrival']),
        callSign: mapValueOfType<String>(json, r'callSign'),
        aircraft: AirportFlightContractAircraft.fromJson(json[r'aircraft']),
        airline: AirportFlightContractAirline.fromJson(json[r'airline']),
        location: AirportFlightContractLocation.fromJson(json[r'location']),
      );
    }
    return null;
  }

  static List<AirportFlightContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AirportFlightContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AirportFlightContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AirportFlightContract> mapFromJson(dynamic json) {
    final map = <String, AirportFlightContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AirportFlightContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AirportFlightContract-objects as value to a dart map
  static Map<String, List<AirportFlightContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AirportFlightContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AirportFlightContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'number',
    'status',
    'codeshareStatus',
    'isCargo',
  };
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AirportFlightContractDeparture {
  /// Returns a new [AirportFlightContractDeparture] instance.
  AirportFlightContractDeparture({
    required this.airport,
    this.quality = const [],
    this.scheduledTime,
    this.revisedTime,
    this.runwayTime,
    this.terminal,
    this.checkInDesk,
    this.gate,
    this.baggageBelt,
    this.runway,
  });

  ListingAirportContract airport;

  /// Array of quality characteristics of the data. Check this to know which information  you can expect within this contract (basic, live and/or approximate data).
  List<FlightAirportMovementQualityEnum> quality;

  FlightAirportMovementContractScheduledTime? scheduledTime;

  FlightAirportMovementContractRevisedTime? revisedTime;

  FlightAirportMovementContractRunwayTime? runwayTime;

  /// Terminal of the flight
  String? terminal;

  /// Check-in desk(s) for the flight (only for departing flights)
  String? checkInDesk;

  /// Gate of (un)boarding for the flight
  String? gate;

  /// Baggage belt(s) for the flight (only for arriving flights)
  String? baggageBelt;

  /// Name of a runway of landing (for arriving flights) or take-off (for departing flights), if known.
  String? runway;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AirportFlightContractDeparture &&
          other.airport == airport &&
          _deepEquality.equals(other.quality, quality) &&
          other.scheduledTime == scheduledTime &&
          other.revisedTime == revisedTime &&
          other.runwayTime == runwayTime &&
          other.terminal == terminal &&
          other.checkInDesk == checkInDesk &&
          other.gate == gate &&
          other.baggageBelt == baggageBelt &&
          other.runway == runway;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (airport.hashCode) +
      (quality.hashCode) +
      (scheduledTime == null ? 0 : scheduledTime!.hashCode) +
      (revisedTime == null ? 0 : revisedTime!.hashCode) +
      (runwayTime == null ? 0 : runwayTime!.hashCode) +
      (terminal == null ? 0 : terminal!.hashCode) +
      (checkInDesk == null ? 0 : checkInDesk!.hashCode) +
      (gate == null ? 0 : gate!.hashCode) +
      (baggageBelt == null ? 0 : baggageBelt!.hashCode) +
      (runway == null ? 0 : runway!.hashCode);

  @override
  String toString() =>
      'AirportFlightContractDeparture[airport=$airport, quality=$quality, scheduledTime=$scheduledTime, revisedTime=$revisedTime, runwayTime=$runwayTime, terminal=$terminal, checkInDesk=$checkInDesk, gate=$gate, baggageBelt=$baggageBelt, runway=$runway]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'airport'] = this.airport;
    json[r'quality'] = this.quality;
    if (this.scheduledTime != null) {
      json[r'scheduledTime'] = this.scheduledTime;
    } else {
      json[r'scheduledTime'] = null;
    }
    if (this.revisedTime != null) {
      json[r'revisedTime'] = this.revisedTime;
    } else {
      json[r'revisedTime'] = null;
    }
    if (this.runwayTime != null) {
      json[r'runwayTime'] = this.runwayTime;
    } else {
      json[r'runwayTime'] = null;
    }
    if (this.terminal != null) {
      json[r'terminal'] = this.terminal;
    } else {
      json[r'terminal'] = null;
    }
    if (this.checkInDesk != null) {
      json[r'checkInDesk'] = this.checkInDesk;
    } else {
      json[r'checkInDesk'] = null;
    }
    if (this.gate != null) {
      json[r'gate'] = this.gate;
    } else {
      json[r'gate'] = null;
    }
    if (this.baggageBelt != null) {
      json[r'baggageBelt'] = this.baggageBelt;
    } else {
      json[r'baggageBelt'] = null;
    }
    if (this.runway != null) {
      json[r'runway'] = this.runway;
    } else {
      json[r'runway'] = null;
    }
    return json;
  }

  /// Returns a new [AirportFlightContractDeparture] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AirportFlightContractDeparture? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AirportFlightContractDeparture[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AirportFlightContractDeparture[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AirportFlightContractDeparture(
        airport: ListingAirportContract.fromJson(json[r'airport'])!,
        quality:
            FlightAirportMovementQualityEnum.listFromJson(json[r'quality']),
        scheduledTime: FlightAirportMovementContractScheduledTime.fromJson(
            json[r'scheduledTime']),
        revisedTime: FlightAirportMovementContractRevisedTime.fromJson(
            json[r'revisedTime']),
        runwayTime: FlightAirportMovementContractRunwayTime.fromJson(
            json[r'runwayTime']),
        terminal: mapValueOfType<String>(json, r'terminal'),
        checkInDesk: mapValueOfType<String>(json, r'checkInDesk'),
        gate: mapValueOfType<String>(json, r'gate'),
        baggageBelt: mapValueOfType<String>(json, r'baggageBelt'),
        runway: mapValueOfType<String>(json, r'runway'),
      );
    }
    return null;
  }

  static List<AirportFlightContractDeparture> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AirportFlightContractDeparture>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AirportFlightContractDeparture.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AirportFlightContractDeparture> mapFromJson(dynamic json) {
    final map = <String, AirportFlightContractDeparture>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AirportFlightContractDeparture.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AirportFlightContractDeparture-objects as value to a dart map
  static Map<String, List<AirportFlightContractDeparture>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AirportFlightContractDeparture>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AirportFlightContractDeparture.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'airport',
    'quality',
  };
}

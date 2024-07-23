//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FlightDelayContract {
  /// Returns a new [FlightDelayContract] instance.
  FlightDelayContract({
    required this.airportIcao,
    required this.class_,
    required this.medianDelay,
    this.delayPercentiles = const [],
    required this.numConsideredFlights,
    this.numFlightsDelayedBrackets = const [],
    required this.fromUtc,
    required this.toUtc,
    this.scheduledHourUtc,
  });

  /// ICAO code of the airport at which statistics is observed
  String airportIcao;

  StatisticClass class_;

  /// Median historic delay of the flight (format: [-]hh:mm:ss).  Value can be negative (therefore, means early occurence).
  String medianDelay;

  /// Distribution of historic delays of the flight in percentiles from 5 percentile to 95 percentile in steps of 5 percentile,   allowing for a more detailed analysis of delay patterns beyond simple averages or medians.
  List<PercentileBracketContract> delayPercentiles;

  /// The number of flight movements taken into account to calculate this  statistics.
  int numConsideredFlights;

  /// Brackets containing information more detailed information about  how many flights were delayed/early per specific delay range brackets  (e.g. late from 15 to 30 minutes, from 30 to 60, etc.)
  List<DelayBracketContract> numFlightsDelayedBrackets;

  /// The beginning of the time range within which flght delay information is calculated (represented in UTC time)
  DateTime fromUtc;

  /// The end of the time range within which flght delay information is calculated (represented in UTC time)
  DateTime toUtc;

  /// Hour on which flight is scheduled (represented in UTC).    If provided, it separates the statistics for the same flight departing/arriving at different time of day  on different days within the observed period.
  int? scheduledHourUtc;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FlightDelayContract &&
          other.airportIcao == airportIcao &&
          other.class_ == class_ &&
          other.medianDelay == medianDelay &&
          _deepEquality.equals(other.delayPercentiles, delayPercentiles) &&
          other.numConsideredFlights == numConsideredFlights &&
          _deepEquality.equals(
              other.numFlightsDelayedBrackets, numFlightsDelayedBrackets) &&
          other.fromUtc == fromUtc &&
          other.toUtc == toUtc &&
          other.scheduledHourUtc == scheduledHourUtc;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (airportIcao.hashCode) +
      (class_.hashCode) +
      (medianDelay.hashCode) +
      (delayPercentiles.hashCode) +
      (numConsideredFlights.hashCode) +
      (numFlightsDelayedBrackets.hashCode) +
      (fromUtc.hashCode) +
      (toUtc.hashCode) +
      (scheduledHourUtc == null ? 0 : scheduledHourUtc!.hashCode);

  @override
  String toString() =>
      'FlightDelayContract[airportIcao=$airportIcao, class_=$class_, medianDelay=$medianDelay, delayPercentiles=$delayPercentiles, numConsideredFlights=$numConsideredFlights, numFlightsDelayedBrackets=$numFlightsDelayedBrackets, fromUtc=$fromUtc, toUtc=$toUtc, scheduledHourUtc=$scheduledHourUtc]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'airportIcao'] = this.airportIcao;
    json[r'class'] = this.class_;
    json[r'medianDelay'] = this.medianDelay;
    json[r'delayPercentiles'] = this.delayPercentiles;
    json[r'numConsideredFlights'] = this.numConsideredFlights;
    json[r'numFlightsDelayedBrackets'] = this.numFlightsDelayedBrackets;
    json[r'fromUtc'] = this.fromUtc.toUtc().toIso8601String();
    json[r'toUtc'] = this.toUtc.toUtc().toIso8601String();
    if (this.scheduledHourUtc != null) {
      json[r'scheduledHourUtc'] = this.scheduledHourUtc;
    } else {
      json[r'scheduledHourUtc'] = null;
    }
    return json;
  }

  /// Returns a new [FlightDelayContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlightDelayContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "FlightDelayContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "FlightDelayContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FlightDelayContract(
        airportIcao: mapValueOfType<String>(json, r'airportIcao')!,
        class_: StatisticClass.fromJson(json[r'class'])!,
        medianDelay: mapValueOfType<String>(json, r'medianDelay')!,
        delayPercentiles:
            PercentileBracketContract.listFromJson(json[r'delayPercentiles']),
        numConsideredFlights:
            mapValueOfType<int>(json, r'numConsideredFlights')!,
        numFlightsDelayedBrackets: DelayBracketContract.listFromJson(
            json[r'numFlightsDelayedBrackets']),
        fromUtc: mapDateTime(json, r'fromUtc', r'')!,
        toUtc: mapDateTime(json, r'toUtc', r'')!,
        scheduledHourUtc: mapValueOfType<int>(json, r'scheduledHourUtc'),
      );
    }
    return null;
  }

  static List<FlightDelayContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FlightDelayContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlightDelayContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FlightDelayContract> mapFromJson(dynamic json) {
    final map = <String, FlightDelayContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FlightDelayContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FlightDelayContract-objects as value to a dart map
  static Map<String, List<FlightDelayContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<FlightDelayContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FlightDelayContract.listFromJson(
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
    'class',
    'medianDelay',
    'delayPercentiles',
    'numConsideredFlights',
    'numFlightsDelayedBrackets',
    'fromUtc',
    'toUtc',
  };
}

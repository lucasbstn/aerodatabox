//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DailyRouteStatRecordContract {
  /// Returns a new [DailyRouteStatRecordContract] instance.
  DailyRouteStatRecordContract({
    required this.destination,
    required this.averageDailyFlights,
    this.operators = const [],
  });

  ListingAirportContract destination;

  /// Daily average of flights per destination
  double averageDailyFlights;

  /// Airlines operating on the route
  List<FlightAirlineContract> operators;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DailyRouteStatRecordContract &&
          other.destination == destination &&
          other.averageDailyFlights == averageDailyFlights &&
          _deepEquality.equals(other.operators, operators);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (destination.hashCode) +
      (averageDailyFlights.hashCode) +
      (operators.hashCode);

  @override
  String toString() =>
      'DailyRouteStatRecordContract[destination=$destination, averageDailyFlights=$averageDailyFlights, operators=$operators]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'destination'] = this.destination;
    json[r'averageDailyFlights'] = this.averageDailyFlights;
    json[r'operators'] = this.operators;
    return json;
  }

  /// Returns a new [DailyRouteStatRecordContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DailyRouteStatRecordContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DailyRouteStatRecordContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DailyRouteStatRecordContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DailyRouteStatRecordContract(
        destination: ListingAirportContract.fromJson(json[r'destination'])!,
        averageDailyFlights:
            mapValueOfType<double>(json, r'averageDailyFlights')!,
        operators: FlightAirlineContract.listFromJson(json[r'operators']),
      );
    }
    return null;
  }

  static List<DailyRouteStatRecordContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DailyRouteStatRecordContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DailyRouteStatRecordContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DailyRouteStatRecordContract> mapFromJson(dynamic json) {
    final map = <String, DailyRouteStatRecordContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DailyRouteStatRecordContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DailyRouteStatRecordContract-objects as value to a dart map
  static Map<String, List<DailyRouteStatRecordContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DailyRouteStatRecordContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DailyRouteStatRecordContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'destination',
    'averageDailyFlights',
    'operators',
  };
}

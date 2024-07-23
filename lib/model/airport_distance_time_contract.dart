//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AirportDistanceTimeContract {
  /// Returns a new [AirportDistanceTimeContract] instance.
  AirportDistanceTimeContract({
    required this.from,
    required this.to,
    required this.greatCircleDistance,
    required this.approxFlightTime,
  });

  ListingAirportContract from;

  ListingAirportContract to;

  Distance greatCircleDistance;

  /// Approximate flight time based on re-calculation of great circle distance  against statistical duration average of multiple flights covered similar  distance before.
  String approxFlightTime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AirportDistanceTimeContract &&
          other.from == from &&
          other.to == to &&
          other.greatCircleDistance == greatCircleDistance &&
          other.approxFlightTime == approxFlightTime;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (from.hashCode) +
      (to.hashCode) +
      (greatCircleDistance.hashCode) +
      (approxFlightTime.hashCode);

  @override
  String toString() =>
      'AirportDistanceTimeContract[from=$from, to=$to, greatCircleDistance=$greatCircleDistance, approxFlightTime=$approxFlightTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'from'] = this.from;
    json[r'to'] = this.to;
    json[r'greatCircleDistance'] = this.greatCircleDistance;
    json[r'approxFlightTime'] = this.approxFlightTime;
    return json;
  }

  /// Returns a new [AirportDistanceTimeContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AirportDistanceTimeContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AirportDistanceTimeContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AirportDistanceTimeContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AirportDistanceTimeContract(
        from: ListingAirportContract.fromJson(json[r'from'])!,
        to: ListingAirportContract.fromJson(json[r'to'])!,
        greatCircleDistance: Distance.fromJson(json[r'greatCircleDistance'])!,
        approxFlightTime: mapValueOfType<String>(json, r'approxFlightTime')!,
      );
    }
    return null;
  }

  static List<AirportDistanceTimeContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AirportDistanceTimeContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AirportDistanceTimeContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AirportDistanceTimeContract> mapFromJson(dynamic json) {
    final map = <String, AirportDistanceTimeContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AirportDistanceTimeContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AirportDistanceTimeContract-objects as value to a dart map
  static Map<String, List<AirportDistanceTimeContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AirportDistanceTimeContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AirportDistanceTimeContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'from',
    'to',
    'greatCircleDistance',
    'approxFlightTime',
  };
}

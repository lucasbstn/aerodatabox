//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AirportFeedServiceStatusContract {
  /// Returns a new [AirportFeedServiceStatusContract] instance.
  AirportFeedServiceStatusContract({
    required this.flightSchedulesFeed,
    required this.liveFlightUpdatesFeed,
    required this.adsbUpdatesFeed,
    required this.generalAvailability,
  });

  FeedServiceStatusContract flightSchedulesFeed;

  FeedServiceStatusContract liveFlightUpdatesFeed;

  FeedServiceStatusContract adsbUpdatesFeed;

  FlightDataGeneralAvailabilityContract generalAvailability;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AirportFeedServiceStatusContract &&
          other.flightSchedulesFeed == flightSchedulesFeed &&
          other.liveFlightUpdatesFeed == liveFlightUpdatesFeed &&
          other.adsbUpdatesFeed == adsbUpdatesFeed &&
          other.generalAvailability == generalAvailability;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (flightSchedulesFeed.hashCode) +
      (liveFlightUpdatesFeed.hashCode) +
      (adsbUpdatesFeed.hashCode) +
      (generalAvailability.hashCode);

  @override
  String toString() =>
      'AirportFeedServiceStatusContract[flightSchedulesFeed=$flightSchedulesFeed, liveFlightUpdatesFeed=$liveFlightUpdatesFeed, adsbUpdatesFeed=$adsbUpdatesFeed, generalAvailability=$generalAvailability]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'flightSchedulesFeed'] = this.flightSchedulesFeed;
    json[r'liveFlightUpdatesFeed'] = this.liveFlightUpdatesFeed;
    json[r'adsbUpdatesFeed'] = this.adsbUpdatesFeed;
    json[r'generalAvailability'] = this.generalAvailability;
    return json;
  }

  /// Returns a new [AirportFeedServiceStatusContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AirportFeedServiceStatusContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AirportFeedServiceStatusContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AirportFeedServiceStatusContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AirportFeedServiceStatusContract(
        flightSchedulesFeed:
            FeedServiceStatusContract.fromJson(json[r'flightSchedulesFeed'])!,
        liveFlightUpdatesFeed:
            FeedServiceStatusContract.fromJson(json[r'liveFlightUpdatesFeed'])!,
        adsbUpdatesFeed:
            FeedServiceStatusContract.fromJson(json[r'adsbUpdatesFeed'])!,
        generalAvailability: FlightDataGeneralAvailabilityContract.fromJson(
            json[r'generalAvailability'])!,
      );
    }
    return null;
  }

  static List<AirportFeedServiceStatusContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AirportFeedServiceStatusContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AirportFeedServiceStatusContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AirportFeedServiceStatusContract> mapFromJson(
      dynamic json) {
    final map = <String, AirportFeedServiceStatusContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AirportFeedServiceStatusContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AirportFeedServiceStatusContract-objects as value to a dart map
  static Map<String, List<AirportFeedServiceStatusContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AirportFeedServiceStatusContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AirportFeedServiceStatusContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'flightSchedulesFeed',
    'liveFlightUpdatesFeed',
    'adsbUpdatesFeed',
    'generalAvailability',
  };
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FlightNotificationContract {
  /// Returns a new [FlightNotificationContract] instance.
  FlightNotificationContract({
    this.flights = const [],
    this.subscription,
  });

  /// Modified/created flights
  List<FlightContract>? flights;

  FlightNotificationContractSubscription? subscription;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FlightNotificationContract &&
          _deepEquality.equals(other.flights, flights) &&
          other.subscription == subscription;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (flights == null ? 0 : flights!.hashCode) +
      (subscription == null ? 0 : subscription!.hashCode);

  @override
  String toString() =>
      'FlightNotificationContract[flights=$flights, subscription=$subscription]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.flights != null) {
      json[r'flights'] = this.flights;
    } else {
      json[r'flights'] = null;
    }
    if (this.subscription != null) {
      json[r'subscription'] = this.subscription;
    } else {
      json[r'subscription'] = null;
    }
    return json;
  }

  /// Returns a new [FlightNotificationContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlightNotificationContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "FlightNotificationContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "FlightNotificationContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FlightNotificationContract(
        flights: FlightContract.listFromJson(json[r'flights']),
        subscription: FlightNotificationContractSubscription.fromJson(
            json[r'subscription']),
      );
    }
    return null;
  }

  static List<FlightNotificationContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FlightNotificationContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlightNotificationContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FlightNotificationContract> mapFromJson(dynamic json) {
    final map = <String, FlightNotificationContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FlightNotificationContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FlightNotificationContract-objects as value to a dart map
  static Map<String, List<FlightNotificationContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<FlightNotificationContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FlightNotificationContract.listFromJson(
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FlightLegDelayContract {
  /// Returns a new [FlightLegDelayContract] instance.
  FlightLegDelayContract({
    required this.number,
    this.origins = const [],
    this.destinations = const [],
  });

  /// Flight number
  String number;

  /// Delay statistics of flight on departure at origins
  List<FlightDelayContract>? origins;

  /// Delay statistics of flight on arrival at destinations
  List<FlightDelayContract>? destinations;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FlightLegDelayContract &&
          other.number == number &&
          _deepEquality.equals(other.origins, origins) &&
          _deepEquality.equals(other.destinations, destinations);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (number.hashCode) +
      (origins == null ? 0 : origins!.hashCode) +
      (destinations == null ? 0 : destinations!.hashCode);

  @override
  String toString() =>
      'FlightLegDelayContract[number=$number, origins=$origins, destinations=$destinations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'number'] = this.number;
    if (this.origins != null) {
      json[r'origins'] = this.origins;
    } else {
      json[r'origins'] = null;
    }
    if (this.destinations != null) {
      json[r'destinations'] = this.destinations;
    } else {
      json[r'destinations'] = null;
    }
    return json;
  }

  /// Returns a new [FlightLegDelayContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlightLegDelayContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "FlightLegDelayContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "FlightLegDelayContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FlightLegDelayContract(
        number: mapValueOfType<String>(json, r'number')!,
        origins: FlightDelayContract.listFromJson(json[r'origins']),
        destinations: FlightDelayContract.listFromJson(json[r'destinations']),
      );
    }
    return null;
  }

  static List<FlightLegDelayContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FlightLegDelayContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlightLegDelayContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FlightLegDelayContract> mapFromJson(dynamic json) {
    final map = <String, FlightLegDelayContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FlightLegDelayContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FlightLegDelayContract-objects as value to a dart map
  static Map<String, List<FlightLegDelayContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<FlightLegDelayContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FlightLegDelayContract.listFromJson(
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
  };
}

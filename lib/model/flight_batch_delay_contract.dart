//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FlightBatchDelayContract {
  /// Returns a new [FlightBatchDelayContract] instance.
  FlightBatchDelayContract({
    required this.numTotal,
    required this.numQualifiedTotal,
    required this.numCancelled,
    this.medianDelay,
    this.delayIndex,
  });

  /// Total number of flights in the the batch (including cancelled)
  int numTotal;

  /// Total number of flights in the batch, which were used to to calculate the  delay information (including cancelled). Should equal to or less than `NumTotal`.    The closer the value of this property to the value of `NumTotal`, the higher the  reliability of delay information
  int numQualifiedTotal;

  /// Total amount of flights in the batch
  int numCancelled;

  /// Median delay of flights in the batch (format: [-]hh:mm:ss).  Value can be negative (therefore, means early occurence).
  String? medianDelay;

  /// Normalized value on scale from 0.0 to 5.0 which corresponds with current amount of delays and cancellations in a given batch of flights (the less - the better).
  double? delayIndex;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FlightBatchDelayContract &&
          other.numTotal == numTotal &&
          other.numQualifiedTotal == numQualifiedTotal &&
          other.numCancelled == numCancelled &&
          other.medianDelay == medianDelay &&
          other.delayIndex == delayIndex;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (numTotal.hashCode) +
      (numQualifiedTotal.hashCode) +
      (numCancelled.hashCode) +
      (medianDelay == null ? 0 : medianDelay!.hashCode) +
      (delayIndex == null ? 0 : delayIndex!.hashCode);

  @override
  String toString() =>
      'FlightBatchDelayContract[numTotal=$numTotal, numQualifiedTotal=$numQualifiedTotal, numCancelled=$numCancelled, medianDelay=$medianDelay, delayIndex=$delayIndex]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'numTotal'] = this.numTotal;
    json[r'numQualifiedTotal'] = this.numQualifiedTotal;
    json[r'numCancelled'] = this.numCancelled;
    if (this.medianDelay != null) {
      json[r'medianDelay'] = this.medianDelay;
    } else {
      json[r'medianDelay'] = null;
    }
    if (this.delayIndex != null) {
      json[r'delayIndex'] = this.delayIndex;
    } else {
      json[r'delayIndex'] = null;
    }
    return json;
  }

  /// Returns a new [FlightBatchDelayContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlightBatchDelayContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "FlightBatchDelayContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "FlightBatchDelayContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FlightBatchDelayContract(
        numTotal: mapValueOfType<int>(json, r'numTotal')!,
        numQualifiedTotal: mapValueOfType<int>(json, r'numQualifiedTotal')!,
        numCancelled: mapValueOfType<int>(json, r'numCancelled')!,
        medianDelay: mapValueOfType<String>(json, r'medianDelay'),
        delayIndex: mapValueOfType<double>(json, r'delayIndex'),
      );
    }
    return null;
  }

  static List<FlightBatchDelayContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FlightBatchDelayContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlightBatchDelayContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FlightBatchDelayContract> mapFromJson(dynamic json) {
    final map = <String, FlightBatchDelayContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FlightBatchDelayContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FlightBatchDelayContract-objects as value to a dart map
  static Map<String, List<FlightBatchDelayContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<FlightBatchDelayContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FlightBatchDelayContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'numTotal',
    'numQualifiedTotal',
    'numCancelled',
  };
}

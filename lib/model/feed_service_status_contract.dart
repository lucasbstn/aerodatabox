//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FeedServiceStatusContract {
  /// Returns a new [FeedServiceStatusContract] instance.
  FeedServiceStatusContract({
    required this.service,
    required this.status,
    this.minAvailableLocalDate,
    this.maxAvailableLocalDate,
  });

  FeedServiceEnum service;

  FeedServiceStatus status;

  /// Date of the oldest flight stored (based on scheduled local times)
  DateTime? minAvailableLocalDate;

  /// Date of the most recent flight stored (based on scheduled local times)
  DateTime? maxAvailableLocalDate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FeedServiceStatusContract &&
          other.service == service &&
          other.status == status &&
          other.minAvailableLocalDate == minAvailableLocalDate &&
          other.maxAvailableLocalDate == maxAvailableLocalDate;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (service.hashCode) +
      (status.hashCode) +
      (minAvailableLocalDate == null ? 0 : minAvailableLocalDate!.hashCode) +
      (maxAvailableLocalDate == null ? 0 : maxAvailableLocalDate!.hashCode);

  @override
  String toString() =>
      'FeedServiceStatusContract[service=$service, status=$status, minAvailableLocalDate=$minAvailableLocalDate, maxAvailableLocalDate=$maxAvailableLocalDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'service'] = this.service;
    json[r'status'] = this.status;
    if (this.minAvailableLocalDate != null) {
      json[r'minAvailableLocalDate'] =
          this.minAvailableLocalDate!.toUtc().toIso8601String();
    } else {
      json[r'minAvailableLocalDate'] = null;
    }
    if (this.maxAvailableLocalDate != null) {
      json[r'maxAvailableLocalDate'] =
          this.maxAvailableLocalDate!.toUtc().toIso8601String();
    } else {
      json[r'maxAvailableLocalDate'] = null;
    }
    return json;
  }

  /// Returns a new [FeedServiceStatusContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FeedServiceStatusContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "FeedServiceStatusContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "FeedServiceStatusContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FeedServiceStatusContract(
        service: FeedServiceEnum.fromJson(json[r'service'])!,
        status: FeedServiceStatus.fromJson(json[r'status'])!,
        minAvailableLocalDate: mapDateTime(json, r'minAvailableLocalDate', r''),
        maxAvailableLocalDate: mapDateTime(json, r'maxAvailableLocalDate', r''),
      );
    }
    return null;
  }

  static List<FeedServiceStatusContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FeedServiceStatusContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FeedServiceStatusContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FeedServiceStatusContract> mapFromJson(dynamic json) {
    final map = <String, FeedServiceStatusContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FeedServiceStatusContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FeedServiceStatusContract-objects as value to a dart map
  static Map<String, List<FeedServiceStatusContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<FeedServiceStatusContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FeedServiceStatusContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'service',
    'status',
  };
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FlightNotificationContractSubscription {
  /// Returns a new [FlightNotificationContractSubscription] instance.
  FlightNotificationContractSubscription({
    required this.id,
    required this.isActive,
    required this.createdOnUtc,
    required this.subject,
    required this.subscriber,
    this.activateBeforeUtc,
    this.expiresOnUtc,
  });

  /// Identifier of a subscription.   Use this ID to control the subscription in future (e.g. update or delete).
  String id;

  /// Specifies if the subscription is active
  bool isActive;

  /// Time (UTC) when subscription was created
  DateTime createdOnUtc;

  SubscriptionSubjectContract subject;

  SubscriberContract subscriber;

  /// Time (UTC) before which subscription must be activated (may be applicable to   some non-active newly created subscriptions)
  DateTime? activateBeforeUtc;

  /// Time (UTC) when subscription expires and will be removed.    If not specified, subscription never expires.
  DateTime? expiresOnUtc;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FlightNotificationContractSubscription &&
          other.id == id &&
          other.isActive == isActive &&
          other.createdOnUtc == createdOnUtc &&
          other.subject == subject &&
          other.subscriber == subscriber &&
          other.activateBeforeUtc == activateBeforeUtc &&
          other.expiresOnUtc == expiresOnUtc;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (isActive.hashCode) +
      (createdOnUtc.hashCode) +
      (subject.hashCode) +
      (subscriber.hashCode) +
      (activateBeforeUtc == null ? 0 : activateBeforeUtc!.hashCode) +
      (expiresOnUtc == null ? 0 : expiresOnUtc!.hashCode);

  @override
  String toString() =>
      'FlightNotificationContractSubscription[id=$id, isActive=$isActive, createdOnUtc=$createdOnUtc, subject=$subject, subscriber=$subscriber, activateBeforeUtc=$activateBeforeUtc, expiresOnUtc=$expiresOnUtc]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'isActive'] = this.isActive;
    json[r'createdOnUtc'] = this.createdOnUtc.toUtc().toIso8601String();
    json[r'subject'] = this.subject;
    json[r'subscriber'] = this.subscriber;
    if (this.activateBeforeUtc != null) {
      json[r'activateBeforeUtc'] =
          this.activateBeforeUtc!.toUtc().toIso8601String();
    } else {
      json[r'activateBeforeUtc'] = null;
    }
    if (this.expiresOnUtc != null) {
      json[r'expiresOnUtc'] = this.expiresOnUtc!.toUtc().toIso8601String();
    } else {
      json[r'expiresOnUtc'] = null;
    }
    return json;
  }

  /// Returns a new [FlightNotificationContractSubscription] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlightNotificationContractSubscription? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "FlightNotificationContractSubscription[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "FlightNotificationContractSubscription[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FlightNotificationContractSubscription(
        id: mapValueOfType<String>(json, r'id')!,
        isActive: mapValueOfType<bool>(json, r'isActive')!,
        createdOnUtc: mapDateTime(json, r'createdOnUtc', r'')!,
        subject: SubscriptionSubjectContract.fromJson(json[r'subject'])!,
        subscriber: SubscriberContract.fromJson(json[r'subscriber'])!,
        activateBeforeUtc: mapDateTime(json, r'activateBeforeUtc', r''),
        expiresOnUtc: mapDateTime(json, r'expiresOnUtc', r''),
      );
    }
    return null;
  }

  static List<FlightNotificationContractSubscription> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FlightNotificationContractSubscription>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlightNotificationContractSubscription.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FlightNotificationContractSubscription> mapFromJson(
      dynamic json) {
    final map = <String, FlightNotificationContractSubscription>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            FlightNotificationContractSubscription.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FlightNotificationContractSubscription-objects as value to a dart map
  static Map<String, List<FlightNotificationContractSubscription>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<FlightNotificationContractSubscription>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FlightNotificationContractSubscription.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'isActive',
    'createdOnUtc',
    'subject',
    'subscriber',
  };
}

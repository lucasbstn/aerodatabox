//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateWebHookSubscription {
  /// Returns a new [CreateWebHookSubscription] instance.
  CreateWebHookSubscription({
    required this.url,
  });

  /// Destination HTTP-endpoint where notifications will be sent to. Requirements:  * must be a valid public HTTP(S) URL not requiring additional authorization;  * must use standard or alternative HTTP or HTTPS ports (80, 443, 8008, 8080) or any dynamic port greater or equal to 49152;  * must be able to accept HTTP POST request with JSON-formatted body (application/json);  * must respond with one of successful HTTP status codes (2XX) within 10 seconds;  * the endpoint owner must be aware of and consent to receiving notifications at it.
  String url;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateWebHookSubscription && other.url == url;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (url.hashCode);

  @override
  String toString() => 'CreateWebHookSubscription[url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'url'] = this.url;
    return json;
  }

  /// Returns a new [CreateWebHookSubscription] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateWebHookSubscription? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CreateWebHookSubscription[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CreateWebHookSubscription[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateWebHookSubscription(
        url: mapValueOfType<String>(json, r'url')!,
      );
    }
    return null;
  }

  static List<CreateWebHookSubscription> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CreateWebHookSubscription>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateWebHookSubscription.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateWebHookSubscription> mapFromJson(dynamic json) {
    final map = <String, CreateWebHookSubscription>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateWebHookSubscription.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateWebHookSubscription-objects as value to a dart map
  static Map<String, List<CreateWebHookSubscription>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CreateWebHookSubscription>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateWebHookSubscription.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
  };
}

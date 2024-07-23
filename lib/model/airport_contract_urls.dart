//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AirportContractUrls {
  /// Returns a new [AirportContractUrls] instance.
  AirportContractUrls({
    this.webSite,
    this.wikipedia,
    this.twitter,
    this.liveAtc,
    this.flightRadar,
    this.googleMaps,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webSite;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? wikipedia;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? twitter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? liveAtc;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? flightRadar;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? googleMaps;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AirportContractUrls &&
          other.webSite == webSite &&
          other.wikipedia == wikipedia &&
          other.twitter == twitter &&
          other.liveAtc == liveAtc &&
          other.flightRadar == flightRadar &&
          other.googleMaps == googleMaps;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (webSite == null ? 0 : webSite!.hashCode) +
      (wikipedia == null ? 0 : wikipedia!.hashCode) +
      (twitter == null ? 0 : twitter!.hashCode) +
      (liveAtc == null ? 0 : liveAtc!.hashCode) +
      (flightRadar == null ? 0 : flightRadar!.hashCode) +
      (googleMaps == null ? 0 : googleMaps!.hashCode);

  @override
  String toString() =>
      'AirportContractUrls[webSite=$webSite, wikipedia=$wikipedia, twitter=$twitter, liveAtc=$liveAtc, flightRadar=$flightRadar, googleMaps=$googleMaps]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.webSite != null) {
      json[r'WebSite'] = this.webSite;
    } else {
      json[r'WebSite'] = null;
    }
    if (this.wikipedia != null) {
      json[r'Wikipedia'] = this.wikipedia;
    } else {
      json[r'Wikipedia'] = null;
    }
    if (this.twitter != null) {
      json[r'Twitter'] = this.twitter;
    } else {
      json[r'Twitter'] = null;
    }
    if (this.liveAtc != null) {
      json[r'LiveAtc'] = this.liveAtc;
    } else {
      json[r'LiveAtc'] = null;
    }
    if (this.flightRadar != null) {
      json[r'FlightRadar'] = this.flightRadar;
    } else {
      json[r'FlightRadar'] = null;
    }
    if (this.googleMaps != null) {
      json[r'GoogleMaps'] = this.googleMaps;
    } else {
      json[r'GoogleMaps'] = null;
    }
    return json;
  }

  /// Returns a new [AirportContractUrls] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AirportContractUrls? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AirportContractUrls[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AirportContractUrls[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AirportContractUrls(
        webSite: mapValueOfType<String>(json, r'WebSite'),
        wikipedia: mapValueOfType<String>(json, r'Wikipedia'),
        twitter: mapValueOfType<String>(json, r'Twitter'),
        liveAtc: mapValueOfType<String>(json, r'LiveAtc'),
        flightRadar: mapValueOfType<String>(json, r'FlightRadar'),
        googleMaps: mapValueOfType<String>(json, r'GoogleMaps'),
      );
    }
    return null;
  }

  static List<AirportContractUrls> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AirportContractUrls>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AirportContractUrls.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AirportContractUrls> mapFromJson(dynamic json) {
    final map = <String, AirportContractUrls>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AirportContractUrls.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AirportContractUrls-objects as value to a dart map
  static Map<String, List<AirportContractUrls>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AirportContractUrls>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AirportContractUrls.listFromJson(
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

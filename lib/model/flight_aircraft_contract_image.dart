//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FlightAircraftContractImage {
  /// Returns a new [FlightAircraftContractImage] instance.
  FlightAircraftContractImage({
    required this.url,
    required this.license,
    this.webUrl,
    this.author,
    this.title,
    this.description,
    this.htmlAttributions = const [],
  });

  /// URL of the resource
  String url;

  LicenseType license;

  /// URL of web-page containing the resource
  String? webUrl;

  /// Author name of the resource
  String? author;

  /// Title of the resource
  String? title;

  /// Description of the resource
  String? description;

  /// Attributions maintaining copyright, ownership and other legal information adjusted for displaying  as HTML. Each element represent one line.
  List<String>? htmlAttributions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FlightAircraftContractImage &&
          other.url == url &&
          other.license == license &&
          other.webUrl == webUrl &&
          other.author == author &&
          other.title == title &&
          other.description == description &&
          _deepEquality.equals(other.htmlAttributions, htmlAttributions);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (url.hashCode) +
      (license.hashCode) +
      (webUrl == null ? 0 : webUrl!.hashCode) +
      (author == null ? 0 : author!.hashCode) +
      (title == null ? 0 : title!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (htmlAttributions == null ? 0 : htmlAttributions!.hashCode);

  @override
  String toString() =>
      'FlightAircraftContractImage[url=$url, license=$license, webUrl=$webUrl, author=$author, title=$title, description=$description, htmlAttributions=$htmlAttributions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'url'] = this.url;
    json[r'license'] = this.license;
    if (this.webUrl != null) {
      json[r'webUrl'] = this.webUrl;
    } else {
      json[r'webUrl'] = null;
    }
    if (this.author != null) {
      json[r'author'] = this.author;
    } else {
      json[r'author'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.htmlAttributions != null) {
      json[r'htmlAttributions'] = this.htmlAttributions;
    } else {
      json[r'htmlAttributions'] = null;
    }
    return json;
  }

  /// Returns a new [FlightAircraftContractImage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlightAircraftContractImage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "FlightAircraftContractImage[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "FlightAircraftContractImage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FlightAircraftContractImage(
        url: mapValueOfType<String>(json, r'url')!,
        license: LicenseType.fromJson(json[r'license'])!,
        webUrl: mapValueOfType<String>(json, r'webUrl'),
        author: mapValueOfType<String>(json, r'author'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        htmlAttributions: json[r'htmlAttributions'] is Iterable
            ? (json[r'htmlAttributions'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<FlightAircraftContractImage> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FlightAircraftContractImage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlightAircraftContractImage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FlightAircraftContractImage> mapFromJson(dynamic json) {
    final map = <String, FlightAircraftContractImage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FlightAircraftContractImage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FlightAircraftContractImage-objects as value to a dart map
  static Map<String, List<FlightAircraftContractImage>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<FlightAircraftContractImage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FlightAircraftContractImage.listFromJson(
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
    'license',
  };
}

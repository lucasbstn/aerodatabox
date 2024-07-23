//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RunwayContract {
  /// Returns a new [RunwayContract] instance.
  RunwayContract({
    required this.name,
    required this.trueHdg,
    required this.isClosed,
    required this.surface,
    this.length,
    this.width,
    this.location,
    this.displacedThreshold,
    this.hasLighting,
  });

  /// Name of the runway. E.g.: 27L, 06, 36C, etc.
  String name;

  /// True heading of the runway in degrees
  double trueHdg;

  /// Marker, if runway is closed
  bool isClosed;

  SurfaceType surface;

  RunwayContractLength? length;

  RunwayContractWidth? width;

  RunwayContractLocation? location;

  RunwayContractDisplacedThreshold? displacedThreshold;

  /// Does runway has lights
  bool? hasLighting;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RunwayContract &&
          other.name == name &&
          other.trueHdg == trueHdg &&
          other.isClosed == isClosed &&
          other.surface == surface &&
          other.length == length &&
          other.width == width &&
          other.location == location &&
          other.displacedThreshold == displacedThreshold &&
          other.hasLighting == hasLighting;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name.hashCode) +
      (trueHdg.hashCode) +
      (isClosed.hashCode) +
      (surface.hashCode) +
      (length == null ? 0 : length!.hashCode) +
      (width == null ? 0 : width!.hashCode) +
      (location == null ? 0 : location!.hashCode) +
      (displacedThreshold == null ? 0 : displacedThreshold!.hashCode) +
      (hasLighting == null ? 0 : hasLighting!.hashCode);

  @override
  String toString() =>
      'RunwayContract[name=$name, trueHdg=$trueHdg, isClosed=$isClosed, surface=$surface, length=$length, width=$width, location=$location, displacedThreshold=$displacedThreshold, hasLighting=$hasLighting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'name'] = this.name;
    json[r'trueHdg'] = this.trueHdg;
    json[r'isClosed'] = this.isClosed;
    json[r'surface'] = this.surface;
    if (this.length != null) {
      json[r'length'] = this.length;
    } else {
      json[r'length'] = null;
    }
    if (this.width != null) {
      json[r'width'] = this.width;
    } else {
      json[r'width'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.displacedThreshold != null) {
      json[r'displacedThreshold'] = this.displacedThreshold;
    } else {
      json[r'displacedThreshold'] = null;
    }
    if (this.hasLighting != null) {
      json[r'hasLighting'] = this.hasLighting;
    } else {
      json[r'hasLighting'] = null;
    }
    return json;
  }

  /// Returns a new [RunwayContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RunwayContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RunwayContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RunwayContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RunwayContract(
        name: mapValueOfType<String>(json, r'name')!,
        trueHdg: mapValueOfType<double>(json, r'trueHdg')!,
        isClosed: mapValueOfType<bool>(json, r'isClosed')!,
        surface: SurfaceType.fromJson(json[r'surface'])!,
        length: RunwayContractLength.fromJson(json[r'length']),
        width: RunwayContractWidth.fromJson(json[r'width']),
        location: RunwayContractLocation.fromJson(json[r'location']),
        displacedThreshold: RunwayContractDisplacedThreshold.fromJson(
            json[r'displacedThreshold']),
        hasLighting: mapValueOfType<bool>(json, r'hasLighting'),
      );
    }
    return null;
  }

  static List<RunwayContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RunwayContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunwayContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RunwayContract> mapFromJson(dynamic json) {
    final map = <String, RunwayContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RunwayContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RunwayContract-objects as value to a dart map
  static Map<String, List<RunwayContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RunwayContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RunwayContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'trueHdg',
    'isClosed',
    'surface',
  };
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DelayBracketContract {
  /// Returns a new [DelayBracketContract] instance.
  DelayBracketContract({
    required this.num_,
    this.delayedFrom,
    this.delayedTo,
    this.percentage,
  });

  /// Count of records subject to a specified delay range
  int num_;

  /// The beginning of the delay range (format: [-]hh:mm:ss).  E.g. in the expresssion \"delayed from 30 to 60 minutes\" stands for \"from 30 minutes\".  Value can be negative (therefore, means early occurence).    Must be preset if \"DelayedTo\" is not specified.
  String? delayedFrom;

  /// The end of the delay range (format: [-]hh:mm:ss).  E.g. in the expresssion \"delayed from 30 to 60 minutes\" stands for \"to 60 minutes\".  Value can be negative (therefore, means early occurence).    Must be preset if \"DelayedFrom\" is not specified.
  String? delayedTo;

  /// Percentage of records subject to a specified delay range.    Only available when this delay bracket is provided as a part  of a statistical information of a bigger context and the \"total\"  count of records is known.
  double? percentage;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DelayBracketContract &&
          other.num_ == num_ &&
          other.delayedFrom == delayedFrom &&
          other.delayedTo == delayedTo &&
          other.percentage == percentage;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (num_.hashCode) +
      (delayedFrom == null ? 0 : delayedFrom!.hashCode) +
      (delayedTo == null ? 0 : delayedTo!.hashCode) +
      (percentage == null ? 0 : percentage!.hashCode);

  @override
  String toString() =>
      'DelayBracketContract[num_=$num_, delayedFrom=$delayedFrom, delayedTo=$delayedTo, percentage=$percentage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'num'] = this.num_;
    if (this.delayedFrom != null) {
      json[r'delayedFrom'] = this.delayedFrom;
    } else {
      json[r'delayedFrom'] = null;
    }
    if (this.delayedTo != null) {
      json[r'delayedTo'] = this.delayedTo;
    } else {
      json[r'delayedTo'] = null;
    }
    if (this.percentage != null) {
      json[r'percentage'] = this.percentage;
    } else {
      json[r'percentage'] = null;
    }
    return json;
  }

  /// Returns a new [DelayBracketContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DelayBracketContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DelayBracketContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DelayBracketContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DelayBracketContract(
        num_: mapValueOfType<int>(json, r'num')!,
        delayedFrom: mapValueOfType<String>(json, r'delayedFrom'),
        delayedTo: mapValueOfType<String>(json, r'delayedTo'),
        percentage: mapValueOfType<double>(json, r'percentage'),
      );
    }
    return null;
  }

  static List<DelayBracketContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DelayBracketContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DelayBracketContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DelayBracketContract> mapFromJson(dynamic json) {
    final map = <String, DelayBracketContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DelayBracketContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DelayBracketContract-objects as value to a dart map
  static Map<String, List<DelayBracketContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DelayBracketContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DelayBracketContract.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'num',
  };
}

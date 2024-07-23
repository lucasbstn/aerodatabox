//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// <p>Possible values:</p> <ul> <li><b>0 - AllRightsReserved</b>: All Rights Reserved.</li> <li><b>1 - AttributionNoncommercialShareAlikeCC</b>: Creative Commons: Attribution Non-Commercial, Share-alike License.</li> <li><b>2 - AttributionNoncommercialCC</b>: Creative Commons: Attribution Non-Commercial License.</li> <li><b>3 - AttributionNoncommercialNoDerivativesCC</b>: Creative Commons: Attribution Non-Commercial, No Derivatives License.</li> <li><b>4 - AttributionCC</b>: Creative Commons: Attribution License.</li> <li><b>5 - AttributionShareAlikeCC</b>: Creative Commons: Attribution Share-alike License.</li> <li><b>6 - AttributionNoDerivativesCC</b>: Creative Commons: Attribution No Derivatives License.</li> <li><b>7 - NoKnownCopyrightRestrictions</b>: No Known Copyright Resitrctions (Flickr Commons).</li> <li><b>8 - UnitedStatesGovernmentWork</b>: United States Government Work</li> <li><b>9 - PublicDomainDedicationCC0</b>: Public Domain Dedication, CC0</li> <li><b>10 - PublicDomainMark</b>: Public Domain Mark</li> </ul>
class LicenseType {
  /// Instantiate a new enum with the provided [value].
  const LicenseType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const allRightsReserved = LicenseType._(r'AllRightsReserved');
  static const attributionNoncommercialShareAlikeCC =
      LicenseType._(r'AttributionNoncommercialShareAlikeCC');
  static const attributionNoncommercialCC =
      LicenseType._(r'AttributionNoncommercialCC');
  static const attributionNoncommercialNoDerivativesCC =
      LicenseType._(r'AttributionNoncommercialNoDerivativesCC');
  static const attributionCC = LicenseType._(r'AttributionCC');
  static const attributionShareAlikeCC =
      LicenseType._(r'AttributionShareAlikeCC');
  static const attributionNoDerivativesCC =
      LicenseType._(r'AttributionNoDerivativesCC');
  static const noKnownCopyrightRestrictions =
      LicenseType._(r'NoKnownCopyrightRestrictions');
  static const unitedStatesGovernmentWork =
      LicenseType._(r'UnitedStatesGovernmentWork');
  static const publicDomainDedicationCC0 =
      LicenseType._(r'PublicDomainDedicationCC0');
  static const publicDomainMark = LicenseType._(r'PublicDomainMark');

  /// List of all possible values in this [enum][LicenseType].
  static const values = <LicenseType>[
    allRightsReserved,
    attributionNoncommercialShareAlikeCC,
    attributionNoncommercialCC,
    attributionNoncommercialNoDerivativesCC,
    attributionCC,
    attributionShareAlikeCC,
    attributionNoDerivativesCC,
    noKnownCopyrightRestrictions,
    unitedStatesGovernmentWork,
    publicDomainDedicationCC0,
    publicDomainMark,
  ];

  static LicenseType? fromJson(dynamic value) =>
      LicenseTypeTypeTransformer().decode(value);

  static List<LicenseType> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <LicenseType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LicenseType] to String,
/// and [decode] dynamic data back to [LicenseType].
class LicenseTypeTypeTransformer {
  factory LicenseTypeTypeTransformer() =>
      _instance ??= const LicenseTypeTypeTransformer._();

  const LicenseTypeTypeTransformer._();

  String encode(LicenseType data) => data.value;

  /// Decodes a [dynamic value][data] to a LicenseType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LicenseType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AllRightsReserved':
          return LicenseType.allRightsReserved;
        case r'AttributionNoncommercialShareAlikeCC':
          return LicenseType.attributionNoncommercialShareAlikeCC;
        case r'AttributionNoncommercialCC':
          return LicenseType.attributionNoncommercialCC;
        case r'AttributionNoncommercialNoDerivativesCC':
          return LicenseType.attributionNoncommercialNoDerivativesCC;
        case r'AttributionCC':
          return LicenseType.attributionCC;
        case r'AttributionShareAlikeCC':
          return LicenseType.attributionShareAlikeCC;
        case r'AttributionNoDerivativesCC':
          return LicenseType.attributionNoDerivativesCC;
        case r'NoKnownCopyrightRestrictions':
          return LicenseType.noKnownCopyrightRestrictions;
        case r'UnitedStatesGovernmentWork':
          return LicenseType.unitedStatesGovernmentWork;
        case r'PublicDomainDedicationCC0':
          return LicenseType.publicDomainDedicationCC0;
        case r'PublicDomainMark':
          return LicenseType.publicDomainMark;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LicenseTypeTypeTransformer] instance.
  static LicenseTypeTypeTransformer? _instance;
}

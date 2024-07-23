//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AircraftContract {
  /// Returns a new [AircraftContract] instance.
  AircraftContract({
    required this.id,
    required this.reg,
    required this.active,
    required this.isFreighter,
    required this.verified,
    required this.numRegistrations,
    this.serial,
    this.hexIcao,
    this.airlineName,
    this.iataType,
    this.iataCodeShort,
    this.icaoCode,
    this.model,
    this.modelCode,
    this.numSeats,
    this.rolloutDate,
    this.firstFlightDate,
    this.deliveryDate,
    this.registrationDate,
    this.typeName,
    this.numEngines,
    this.engineType,
    this.productionLine,
    this.ageYears,
    this.image,
    this.registrations = const [],
  });

  /// Unique ID of the aircraft record in our database
  int id;

  /// Tail-number of the aircraft
  String reg;

  /// Indicator if aircraft is operational under this registration
  bool active;

  /// Marker if aircraft is cargo or not
  bool isFreighter;

  bool verified;

  /// An aircraft may have a history of past registrations with other airlines or operators.  This field represents a total number of registration records known in our database.
  int numRegistrations;

  /// Serial number
  String? serial;

  /// ICAO 24 bit Mode-S hexadecimal transponder address
  String? hexIcao;

  /// Name of the airline operating the aircraft
  String? airlineName;

  /// IATA-type of the aircraft
  String? iataType;

  /// Short variant of IATA-code of the aircraft
  String? iataCodeShort;

  /// ICAO-code of the aircraft
  String? icaoCode;

  /// Model of the aircraft
  String? model;

  /// Model code of the aircraft
  String? modelCode;

  /// Number of passenger seats
  int? numSeats;

  /// Date of roll-out (UTC)
  DateTime? rolloutDate;

  /// First flight date
  DateTime? firstFlightDate;

  /// Date of delivery to the owner
  DateTime? deliveryDate;

  /// Date of assigning current registration
  DateTime? registrationDate;

  /// Type name
  String? typeName;

  /// Number of engines
  int? numEngines;

  EngineType? engineType;

  /// Production line
  String? productionLine;

  /// Age of the aircraft in year
  double? ageYears;

  AircraftContractImage? image;

  /// A history of all registrations with other airlines or operators (if provided by the endpoint).
  List<AircraftRegistrationContract>? registrations;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AircraftContract &&
          other.id == id &&
          other.reg == reg &&
          other.active == active &&
          other.isFreighter == isFreighter &&
          other.verified == verified &&
          other.numRegistrations == numRegistrations &&
          other.serial == serial &&
          other.hexIcao == hexIcao &&
          other.airlineName == airlineName &&
          other.iataType == iataType &&
          other.iataCodeShort == iataCodeShort &&
          other.icaoCode == icaoCode &&
          other.model == model &&
          other.modelCode == modelCode &&
          other.numSeats == numSeats &&
          other.rolloutDate == rolloutDate &&
          other.firstFlightDate == firstFlightDate &&
          other.deliveryDate == deliveryDate &&
          other.registrationDate == registrationDate &&
          other.typeName == typeName &&
          other.numEngines == numEngines &&
          other.engineType == engineType &&
          other.productionLine == productionLine &&
          other.ageYears == ageYears &&
          other.image == image &&
          _deepEquality.equals(other.registrations, registrations);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (reg.hashCode) +
      (active.hashCode) +
      (isFreighter.hashCode) +
      (verified.hashCode) +
      (numRegistrations.hashCode) +
      (serial == null ? 0 : serial!.hashCode) +
      (hexIcao == null ? 0 : hexIcao!.hashCode) +
      (airlineName == null ? 0 : airlineName!.hashCode) +
      (iataType == null ? 0 : iataType!.hashCode) +
      (iataCodeShort == null ? 0 : iataCodeShort!.hashCode) +
      (icaoCode == null ? 0 : icaoCode!.hashCode) +
      (model == null ? 0 : model!.hashCode) +
      (modelCode == null ? 0 : modelCode!.hashCode) +
      (numSeats == null ? 0 : numSeats!.hashCode) +
      (rolloutDate == null ? 0 : rolloutDate!.hashCode) +
      (firstFlightDate == null ? 0 : firstFlightDate!.hashCode) +
      (deliveryDate == null ? 0 : deliveryDate!.hashCode) +
      (registrationDate == null ? 0 : registrationDate!.hashCode) +
      (typeName == null ? 0 : typeName!.hashCode) +
      (numEngines == null ? 0 : numEngines!.hashCode) +
      (engineType == null ? 0 : engineType!.hashCode) +
      (productionLine == null ? 0 : productionLine!.hashCode) +
      (ageYears == null ? 0 : ageYears!.hashCode) +
      (image == null ? 0 : image!.hashCode) +
      (registrations == null ? 0 : registrations!.hashCode);

  @override
  String toString() =>
      'AircraftContract[id=$id, reg=$reg, active=$active, isFreighter=$isFreighter, verified=$verified, numRegistrations=$numRegistrations, serial=$serial, hexIcao=$hexIcao, airlineName=$airlineName, iataType=$iataType, iataCodeShort=$iataCodeShort, icaoCode=$icaoCode, model=$model, modelCode=$modelCode, numSeats=$numSeats, rolloutDate=$rolloutDate, firstFlightDate=$firstFlightDate, deliveryDate=$deliveryDate, registrationDate=$registrationDate, typeName=$typeName, numEngines=$numEngines, engineType=$engineType, productionLine=$productionLine, ageYears=$ageYears, image=$image, registrations=$registrations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'reg'] = this.reg;
    json[r'active'] = this.active;
    json[r'isFreighter'] = this.isFreighter;
    json[r'verified'] = this.verified;
    json[r'numRegistrations'] = this.numRegistrations;
    if (this.serial != null) {
      json[r'serial'] = this.serial;
    } else {
      json[r'serial'] = null;
    }
    if (this.hexIcao != null) {
      json[r'hexIcao'] = this.hexIcao;
    } else {
      json[r'hexIcao'] = null;
    }
    if (this.airlineName != null) {
      json[r'airlineName'] = this.airlineName;
    } else {
      json[r'airlineName'] = null;
    }
    if (this.iataType != null) {
      json[r'iataType'] = this.iataType;
    } else {
      json[r'iataType'] = null;
    }
    if (this.iataCodeShort != null) {
      json[r'iataCodeShort'] = this.iataCodeShort;
    } else {
      json[r'iataCodeShort'] = null;
    }
    if (this.icaoCode != null) {
      json[r'icaoCode'] = this.icaoCode;
    } else {
      json[r'icaoCode'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.modelCode != null) {
      json[r'modelCode'] = this.modelCode;
    } else {
      json[r'modelCode'] = null;
    }
    if (this.numSeats != null) {
      json[r'numSeats'] = this.numSeats;
    } else {
      json[r'numSeats'] = null;
    }
    if (this.rolloutDate != null) {
      json[r'rolloutDate'] = this.rolloutDate!.toUtc().toIso8601String();
    } else {
      json[r'rolloutDate'] = null;
    }
    if (this.firstFlightDate != null) {
      json[r'firstFlightDate'] =
          this.firstFlightDate!.toUtc().toIso8601String();
    } else {
      json[r'firstFlightDate'] = null;
    }
    if (this.deliveryDate != null) {
      json[r'deliveryDate'] = this.deliveryDate!.toUtc().toIso8601String();
    } else {
      json[r'deliveryDate'] = null;
    }
    if (this.registrationDate != null) {
      json[r'registrationDate'] =
          this.registrationDate!.toUtc().toIso8601String();
    } else {
      json[r'registrationDate'] = null;
    }
    if (this.typeName != null) {
      json[r'typeName'] = this.typeName;
    } else {
      json[r'typeName'] = null;
    }
    if (this.numEngines != null) {
      json[r'numEngines'] = this.numEngines;
    } else {
      json[r'numEngines'] = null;
    }
    if (this.engineType != null) {
      json[r'engineType'] = this.engineType;
    } else {
      json[r'engineType'] = null;
    }
    if (this.productionLine != null) {
      json[r'productionLine'] = this.productionLine;
    } else {
      json[r'productionLine'] = null;
    }
    if (this.ageYears != null) {
      json[r'ageYears'] = this.ageYears;
    } else {
      json[r'ageYears'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.registrations != null) {
      json[r'registrations'] = this.registrations;
    } else {
      json[r'registrations'] = null;
    }
    return json;
  }

  /// Returns a new [AircraftContract] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AircraftContract? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AircraftContract[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AircraftContract[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AircraftContract(
        id: mapValueOfType<int>(json, r'id')!,
        reg: mapValueOfType<String>(json, r'reg')!,
        active: mapValueOfType<bool>(json, r'active')!,
        isFreighter: mapValueOfType<bool>(json, r'isFreighter')!,
        verified: mapValueOfType<bool>(json, r'verified')!,
        numRegistrations: mapValueOfType<int>(json, r'numRegistrations')!,
        serial: mapValueOfType<String>(json, r'serial'),
        hexIcao: mapValueOfType<String>(json, r'hexIcao'),
        airlineName: mapValueOfType<String>(json, r'airlineName'),
        iataType: mapValueOfType<String>(json, r'iataType'),
        iataCodeShort: mapValueOfType<String>(json, r'iataCodeShort'),
        icaoCode: mapValueOfType<String>(json, r'icaoCode'),
        model: mapValueOfType<String>(json, r'model'),
        modelCode: mapValueOfType<String>(json, r'modelCode'),
        numSeats: mapValueOfType<int>(json, r'numSeats'),
        rolloutDate: mapDateTime(json, r'rolloutDate', r''),
        firstFlightDate: mapDateTime(json, r'firstFlightDate', r''),
        deliveryDate: mapDateTime(json, r'deliveryDate', r''),
        registrationDate: mapDateTime(json, r'registrationDate', r''),
        typeName: mapValueOfType<String>(json, r'typeName'),
        numEngines: mapValueOfType<int>(json, r'numEngines'),
        engineType: EngineType.fromJson(json[r'engineType']),
        productionLine: mapValueOfType<String>(json, r'productionLine'),
        ageYears: mapValueOfType<double>(json, r'ageYears'),
        image: AircraftContractImage.fromJson(json[r'image']),
        registrations:
            AircraftRegistrationContract.listFromJson(json[r'registrations']),
      );
    }
    return null;
  }

  static List<AircraftContract> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AircraftContract>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AircraftContract.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AircraftContract> mapFromJson(dynamic json) {
    final map = <String, AircraftContract>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AircraftContract.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AircraftContract-objects as value to a dart map
  static Map<String, List<AircraftContract>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AircraftContract>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AircraftContract.listFromJson(
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
    'reg',
    'active',
    'isFreighter',
    'verified',
    'numRegistrations',
  };
}

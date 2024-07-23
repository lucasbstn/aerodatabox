//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AircraftAPIApi {
  AircraftAPIApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Single aircraft (by tail-number, Mode-S or ID) [TIER 1]
  ///
  /// *Returns:* Single aircraft, *best* matching specified search criteria, if found. Please note that all found aircraft will be impersonated with registration information matching the requested tail number or Mode-S even though an aircraft might be flying under a different registration right now.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AircraftSearchByEnum] searchBy (required):
  ///   Criteria to search aircraft by
  ///
  /// * [String] searchParam (required):
  ///   Value of the search criteria. If `searchBy` is:   * `id`: then this field should be an ID of an aircraft (as specified in the database of this API);  * `reg`: then this field should be a tail-number of an aircraft (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ), multiple matches are possible - see below;  * `icao24`, then this field should be a ICAO 24-bit Mode-S address of an aircraft specified in hexadecimal format (e.g. 484161, 483EFD), multiple matches are possible - see below.    *If multiple matches are possible:*    There cannot be more than one aircraft actively flying with the same tail-number or ICAO 24-bit Mode-S address at any moment of time.   However, historically aircraft tail-numbers or addresses may be used multiple times by different aircraft.  This endpoint is supposed to return a **single** aircraft data. In case if multiple aircraft satisfy the search criteria, the best match will be chosen as follows:  * If an active aircraft is found according to the requested critera, it is returned.  * Otherwise, an aircraft that used requested tail-number/address the most recently is returned.   * If usage time may not be determined, the aircraft stored in the database the most recently is returned.
  ///
  /// * [bool] withImage:
  ///   Should include aircraft image (default: false).
  ///
  /// * [bool] withRegistrations:
  ///   Should include the history of aircraft registrations (default: false).
  Future<Response> getAircraftWithHttpInfo(
    AircraftSearchByEnum searchBy,
    String searchParam, {
    bool? withImage,
    bool? withRegistrations,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/aircrafts/{searchBy}/{searchParam}'
        .replaceAll('{searchBy}', searchBy.toString())
        .replaceAll('{searchParam}', searchParam);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (withImage != null) {
      queryParams.addAll(_queryParams('', 'withImage', withImage));
    }
    if (withRegistrations != null) {
      queryParams
          .addAll(_queryParams('', 'withRegistrations', withRegistrations));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Single aircraft (by tail-number, Mode-S or ID) [TIER 1]
  ///
  /// *Returns:* Single aircraft, *best* matching specified search criteria, if found. Please note that all found aircraft will be impersonated with registration information matching the requested tail number or Mode-S even though an aircraft might be flying under a different registration right now.
  ///
  /// Parameters:
  ///
  /// * [AircraftSearchByEnum] searchBy (required):
  ///   Criteria to search aircraft by
  ///
  /// * [String] searchParam (required):
  ///   Value of the search criteria. If `searchBy` is:   * `id`: then this field should be an ID of an aircraft (as specified in the database of this API);  * `reg`: then this field should be a tail-number of an aircraft (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ), multiple matches are possible - see below;  * `icao24`, then this field should be a ICAO 24-bit Mode-S address of an aircraft specified in hexadecimal format (e.g. 484161, 483EFD), multiple matches are possible - see below.    *If multiple matches are possible:*    There cannot be more than one aircraft actively flying with the same tail-number or ICAO 24-bit Mode-S address at any moment of time.   However, historically aircraft tail-numbers or addresses may be used multiple times by different aircraft.  This endpoint is supposed to return a **single** aircraft data. In case if multiple aircraft satisfy the search criteria, the best match will be chosen as follows:  * If an active aircraft is found according to the requested critera, it is returned.  * Otherwise, an aircraft that used requested tail-number/address the most recently is returned.   * If usage time may not be determined, the aircraft stored in the database the most recently is returned.
  ///
  /// * [bool] withImage:
  ///   Should include aircraft image (default: false).
  ///
  /// * [bool] withRegistrations:
  ///   Should include the history of aircraft registrations (default: false).
  Future<AircraftContract?> getAircraft(
    AircraftSearchByEnum searchBy,
    String searchParam, {
    bool? withImage,
    bool? withRegistrations,
  }) async {
    final response = await getAircraftWithHttpInfo(
      searchBy,
      searchParam,
      withImage: withImage,
      withRegistrations: withRegistrations,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'AircraftContract',
      ) as AircraftContract;
    }
    return null;
  }

  /// Aircraft image by tail-number (BETA) [TIER 2]
  ///
  /// **What is the aircraft photo?**    Aircraft images are being searched in external sources by certain criteria without any manual intervention.   Therefore, false matches may be returned. Only images with licenses approved for commercial use are returned. Please be advised that you may be required to mention author attribution before using the image.    *Returns:* Image data with medium-sized direct image URL and licence approved for commercial use  is returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] reg (required):
  ///   Tail-number of the aircraft (full, stripped and any case formats are acceptable).
  Future<Response> getAircraftImageByRegistrationWithHttpInfo(
    String reg,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/aircrafts/reg/{reg}/image/beta'.replaceAll('{reg}', reg);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Aircraft image by tail-number (BETA) [TIER 2]
  ///
  /// **What is the aircraft photo?**    Aircraft images are being searched in external sources by certain criteria without any manual intervention.   Therefore, false matches may be returned. Only images with licenses approved for commercial use are returned. Please be advised that you may be required to mention author attribution before using the image.    *Returns:* Image data with medium-sized direct image URL and licence approved for commercial use  is returned.
  ///
  /// Parameters:
  ///
  /// * [String] reg (required):
  ///   Tail-number of the aircraft (full, stripped and any case formats are acceptable).
  Future<ResourceContract?> getAircraftImageByRegistration(
    String reg,
  ) async {
    final response = await getAircraftImageByRegistrationWithHttpInfo(
      reg,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ResourceContract',
      ) as ResourceContract;
    }
    return null;
  }

  /// Single aircraft registration history (by tail-number, Mode-S or ID) [TIER 1]
  ///
  /// *Returns:* A list of all known registrations of a single aircraft, *best* matching specified search criteria, if found
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AircraftSearchByEnum] searchBy (required):
  ///   Criteria to search aircraft by
  ///
  /// * [String] searchParam (required):
  ///   Value of the search criteria. If `searchBy` is:   * `id`, then this field should be an ID of an aircraft (as specified in the database of this API);  * `reg`, then this field should be a tail-number of an aircraft (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ), multiple matches are possible - see below;  * `icao24`, then this field should be a ICAO 24-bit Mode-S address of an aircraft specified in hexadecimal format (e.g. 484161, 483EFD), multiple matches are possible - see below.    *If multiple matches are possible:* see similar remark to `Single aircraft` endpoint.
  Future<Response> getAircraftRegistrationsWithHttpInfo(
    AircraftSearchByEnum searchBy,
    String searchParam,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/aircrafts/{searchBy}/{searchParam}/registrations'
        .replaceAll('{searchBy}', searchBy.toString())
        .replaceAll('{searchParam}', searchParam);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Single aircraft registration history (by tail-number, Mode-S or ID) [TIER 1]
  ///
  /// *Returns:* A list of all known registrations of a single aircraft, *best* matching specified search criteria, if found
  ///
  /// Parameters:
  ///
  /// * [AircraftSearchByEnum] searchBy (required):
  ///   Criteria to search aircraft by
  ///
  /// * [String] searchParam (required):
  ///   Value of the search criteria. If `searchBy` is:   * `id`, then this field should be an ID of an aircraft (as specified in the database of this API);  * `reg`, then this field should be a tail-number of an aircraft (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ), multiple matches are possible - see below;  * `icao24`, then this field should be a ICAO 24-bit Mode-S address of an aircraft specified in hexadecimal format (e.g. 484161, 483EFD), multiple matches are possible - see below.    *If multiple matches are possible:* see similar remark to `Single aircraft` endpoint.
  Future<List<AircraftRegistrationContract>?> getAircraftRegistrations(
    AircraftSearchByEnum searchBy,
    String searchParam,
  ) async {
    final response = await getAircraftRegistrationsWithHttpInfo(
      searchBy,
      searchParam,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(
              responseBody, 'List<AircraftRegistrationContract>') as List)
          .cast<AircraftRegistrationContract>()
          .toList(growable: false);
    }
    return null;
  }

  /// Airline fleet / Aircraft list by airline code (BETA) [TIER 3]
  ///
  /// *Returns:* A paged list of aircraft in the fleet of the specified airline.     That will include *active* aircraft currently flying in an *active* airline, verfified through more than one source.  Unconfirmed sightings of an aircraft will not qualify said aircraft to be listed in the fleet.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] airlineCode (required):
  ///   3-character ICAO-code of the airliner (e.g., KLM, ACA); or  2-character IATA-code of the airline (e.g., KL, AC).                Please note that more than one active airline may have the same IATA code, therefore IATA codes are not recommended for this endpoint.
  ///
  /// * [int] pageSize (required):
  ///   The number of returned records will be capped at this value.  Must be a positive value and not exceed the limit stipulated by your pricing plan.
  ///
  /// * [int] pageOffset:
  ///   The number of records to skip before listing a page of records. In conjunction with `pageSize` effectively determines the page number (default  - 0).
  ///
  /// * [bool] withRegistrations:
  ///   Should include the history of aircraft registrations (default: false).
  Future<Response> getAirlineFleetWithHttpInfo(
    String airlineCode,
    int pageSize, {
    int? pageOffset,
    bool? withRegistrations,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/airlines/{airlineCode}/aircrafts'
        .replaceAll('{airlineCode}', airlineCode);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    if (pageOffset != null) {
      queryParams.addAll(_queryParams('', 'pageOffset', pageOffset));
    }
    if (withRegistrations != null) {
      queryParams
          .addAll(_queryParams('', 'withRegistrations', withRegistrations));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Airline fleet / Aircraft list by airline code (BETA) [TIER 3]
  ///
  /// *Returns:* A paged list of aircraft in the fleet of the specified airline.     That will include *active* aircraft currently flying in an *active* airline, verfified through more than one source.  Unconfirmed sightings of an aircraft will not qualify said aircraft to be listed in the fleet.
  ///
  /// Parameters:
  ///
  /// * [String] airlineCode (required):
  ///   3-character ICAO-code of the airliner (e.g., KLM, ACA); or  2-character IATA-code of the airline (e.g., KL, AC).                Please note that more than one active airline may have the same IATA code, therefore IATA codes are not recommended for this endpoint.
  ///
  /// * [int] pageSize (required):
  ///   The number of returned records will be capped at this value.  Must be a positive value and not exceed the limit stipulated by your pricing plan.
  ///
  /// * [int] pageOffset:
  ///   The number of records to skip before listing a page of records. In conjunction with `pageSize` effectively determines the page number (default  - 0).
  ///
  /// * [bool] withRegistrations:
  ///   Should include the history of aircraft registrations (default: false).
  Future<AircraftContractPagedCollectionContract?> getAirlineFleet(
    String airlineCode,
    int pageSize, {
    int? pageOffset,
    bool? withRegistrations,
  }) async {
    final response = await getAirlineFleetWithHttpInfo(
      airlineCode,
      pageSize,
      pageOffset: pageOffset,
      withRegistrations: withRegistrations,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'AircraftContractPagedCollectionContract',
      ) as AircraftContractPagedCollectionContract;
    }
    return null;
  }

  /// All aircraft (by tail-number, Mode-S or ID) [TIER 1]
  ///
  /// *Returns:* A list of all aircraft ever matched the requested criteria. Please note that all found aircraft will be impersonated with registration information matching the requested tail number or Mode-S even though an aircraft might be flying under a different registration right now.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AircraftSearchByEnum] searchBy (required):
  ///   Criteria to search aircraft by
  ///
  /// * [String] searchParam (required):
  ///   Value of the search criteria. If `searchBy` is:   * `id`, then this field should be an ID of an aircraft (as specified in the database of this API);  * `reg`, then this field should be a tail-number of an aircraft (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ);  * `icao24`, then this field should be a ICAO 24-bit Mode-S address of an aircraft specified in hexadecimal format (e.g. 484161, 483EFD).
  ///
  /// * [bool] withImage:
  ///   Should include aircraft image (default: false).
  ///
  /// * [bool] withRegistrations:
  ///   Should include the history of aircraft registrations (default: false).
  Future<Response> getAllAircraftWithHttpInfo(
    AircraftSearchByEnum searchBy,
    String searchParam, {
    bool? withImage,
    bool? withRegistrations,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/aircrafts/{searchBy}/{searchParam}/all'
        .replaceAll('{searchBy}', searchBy.toString())
        .replaceAll('{searchParam}', searchParam);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (withImage != null) {
      queryParams.addAll(_queryParams('', 'withImage', withImage));
    }
    if (withRegistrations != null) {
      queryParams
          .addAll(_queryParams('', 'withRegistrations', withRegistrations));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// All aircraft (by tail-number, Mode-S or ID) [TIER 1]
  ///
  /// *Returns:* A list of all aircraft ever matched the requested criteria. Please note that all found aircraft will be impersonated with registration information matching the requested tail number or Mode-S even though an aircraft might be flying under a different registration right now.
  ///
  /// Parameters:
  ///
  /// * [AircraftSearchByEnum] searchBy (required):
  ///   Criteria to search aircraft by
  ///
  /// * [String] searchParam (required):
  ///   Value of the search criteria. If `searchBy` is:   * `id`, then this field should be an ID of an aircraft (as specified in the database of this API);  * `reg`, then this field should be a tail-number of an aircraft (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ);  * `icao24`, then this field should be a ICAO 24-bit Mode-S address of an aircraft specified in hexadecimal format (e.g. 484161, 483EFD).
  ///
  /// * [bool] withImage:
  ///   Should include aircraft image (default: false).
  ///
  /// * [bool] withRegistrations:
  ///   Should include the history of aircraft registrations (default: false).
  Future<List<AircraftContract>?> getAllAircraft(
    AircraftSearchByEnum searchBy,
    String searchParam, {
    bool? withImage,
    bool? withRegistrations,
  }) async {
    final response = await getAllAircraftWithHttpInfo(
      searchBy,
      searchParam,
      withImage: withImage,
      withRegistrations: withRegistrations,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(
              responseBody, 'List<AircraftContract>') as List)
          .cast<AircraftContract>()
          .toList(growable: false);
    }
    return null;
  }

  /// Aicraft image recognition (BETA) [TIER 3]
  ///
  /// **What aircrafts are depicted on this photo?**    This endpoint recognizes aircrafts on uploaded image and returns information about all detected aircrafts. It is based on computer vision technology and therefore results may be imprecise.   It relies on detecting aircrafts' registrations and, once detected, attempting to match these registration with records in aircrafts database.    *Returns:* Data about found and recognized aircrafts.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] photo (required):
  Future<Response> recognizeAircraftWithHttpInfo(
    MultipartFile photo,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/aircrafts/recognize/beta';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    hasFields = true;
    mp.fields[r'photo'] = photo.field;
    mp.files.add(photo);
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Aicraft image recognition (BETA) [TIER 3]
  ///
  /// **What aircrafts are depicted on this photo?**    This endpoint recognizes aircrafts on uploaded image and returns information about all detected aircrafts. It is based on computer vision technology and therefore results may be imprecise.   It relies on detecting aircrafts' registrations and, once detected, attempting to match these registration with records in aircrafts database.    *Returns:* Data about found and recognized aircrafts.
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] photo (required):
  Future<AircraftRecognitionResultContract?> recognizeAircraft(
    MultipartFile photo,
  ) async {
    final response = await recognizeAircraftWithHttpInfo(
      photo,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'AircraftRecognitionResultContract',
      ) as AircraftRecognitionResultContract;
    }
    return null;
  }
}

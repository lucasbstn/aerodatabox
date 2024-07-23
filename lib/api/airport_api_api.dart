//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AirportAPIApi {
  AirportAPIApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Airport by code [TIER 1]
  ///
  /// At the moment airports having both ICAO and IATA code are present in database only.    *Returns*: Single airport data, if found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AirportCodesByEnum] codeType (required):
  ///   Type of code to search airport by (`iata` or `icao`)
  ///
  /// * [String] code (required):
  ///   If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
  ///
  /// * [bool] withRunways:
  ///   Include runways data (default - false)
  ///
  /// * [bool] withTime:
  ///   Include current local time (default - false)
  Future<Response> getAirportWithHttpInfo(
    AirportCodesByEnum codeType,
    String code, {
    bool? withRunways,
    bool? withTime,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/airports/{codeType}/{code}'
        .replaceAll('{codeType}', codeType.toString())
        .replaceAll('{code}', code);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (withRunways != null) {
      queryParams.addAll(_queryParams('', 'withRunways', withRunways));
    }
    if (withTime != null) {
      queryParams.addAll(_queryParams('', 'withTime', withTime));
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

  /// Airport by code [TIER 1]
  ///
  /// At the moment airports having both ICAO and IATA code are present in database only.    *Returns*: Single airport data, if found.
  ///
  /// Parameters:
  ///
  /// * [AirportCodesByEnum] codeType (required):
  ///   Type of code to search airport by (`iata` or `icao`)
  ///
  /// * [String] code (required):
  ///   If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
  ///
  /// * [bool] withRunways:
  ///   Include runways data (default - false)
  ///
  /// * [bool] withTime:
  ///   Include current local time (default - false)
  Future<AirportContract?> getAirport(
    AirportCodesByEnum codeType,
    String code, {
    bool? withRunways,
    bool? withTime,
  }) async {
    final response = await getAirportWithHttpInfo(
      codeType,
      code,
      withRunways: withRunways,
      withTime: withTime,
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
        'AirportContract',
      ) as AirportContract;
    }
    return null;
  }

  /// Airport runways [TIER 1]
  ///
  /// **Which runways does this airport have?**    At the moment airports having both ICAO and IATA code are present in database only.    *Returns*: Collection of runway data items.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AirportCodesByEnum] codeType (required):
  ///   Type of code to search airport by (`iata` or `icao`)
  ///
  /// * [String] code (required):
  ///   If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
  Future<Response> getAirportRunwaysWithHttpInfo(
    AirportCodesByEnum codeType,
    String code,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/airports/{codeType}/{code}/runways'
        .replaceAll('{codeType}', codeType.toString())
        .replaceAll('{code}', code);

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

  /// Airport runways [TIER 1]
  ///
  /// **Which runways does this airport have?**    At the moment airports having both ICAO and IATA code are present in database only.    *Returns*: Collection of runway data items.
  ///
  /// Parameters:
  ///
  /// * [AirportCodesByEnum] codeType (required):
  ///   Type of code to search airport by (`iata` or `icao`)
  ///
  /// * [String] code (required):
  ///   If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
  Future<List<RunwayContract>?> getAirportRunways(
    AirportCodesByEnum codeType,
    String code,
  ) async {
    final response = await getAirportRunwaysWithHttpInfo(
      codeType,
      code,
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
              responseBody, 'List<RunwayContract>') as List)
          .cast<RunwayContract>()
          .toList(growable: false);
    }
    return null;
  }

  /// Search airports by free text [TIER 2]
  ///
  /// At the moment airports having both ICAO and IATA code and flight schedules are present available only.    *Returns:* List of airports with names and city names (and IATA/ICAO code, if enabled) matching the search term.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Search query (min. 3 non whitespace characters length)
  ///
  /// * [int] limit:
  ///   Maximum number of airports to be returned (max. 250, defaut = 10)
  ///
  /// * [bool] withFlightInfoOnly:
  ///   If set to true, will only return airports which have flight data (scheduled or live) available. Default = false.
  ///
  /// * [bool] withSearchByCode:
  ///   If set to true, will attempt to interpret short words within the search query as IATA or ICAO code  and prioritize exact matches by these codes (they will appear higher than others).   Otherwise, the search by code will be completely excluded (only the name of an airport or its city will be searched).   Default = true.
  Future<Response> searchAirportByTermWithHttpInfo(
    String q, {
    int? limit,
    bool? withFlightInfoOnly,
    bool? withSearchByCode,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/airports/search/term';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'q', q));
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (withFlightInfoOnly != null) {
      queryParams
          .addAll(_queryParams('', 'withFlightInfoOnly', withFlightInfoOnly));
    }
    if (withSearchByCode != null) {
      queryParams
          .addAll(_queryParams('', 'withSearchByCode', withSearchByCode));
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

  /// Search airports by free text [TIER 2]
  ///
  /// At the moment airports having both ICAO and IATA code and flight schedules are present available only.    *Returns:* List of airports with names and city names (and IATA/ICAO code, if enabled) matching the search term.
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Search query (min. 3 non whitespace characters length)
  ///
  /// * [int] limit:
  ///   Maximum number of airports to be returned (max. 250, defaut = 10)
  ///
  /// * [bool] withFlightInfoOnly:
  ///   If set to true, will only return airports which have flight data (scheduled or live) available. Default = false.
  ///
  /// * [bool] withSearchByCode:
  ///   If set to true, will attempt to interpret short words within the search query as IATA or ICAO code  and prioritize exact matches by these codes (they will appear higher than others).   Otherwise, the search by code will be completely excluded (only the name of an airport or its city will be searched).   Default = true.
  Future<StringListingAirportContractSearchResultCollectionContract?>
      searchAirportByTerm(
    String q, {
    int? limit,
    bool? withFlightInfoOnly,
    bool? withSearchByCode,
  }) async {
    final response = await searchAirportByTermWithHttpInfo(
      q,
      limit: limit,
      withFlightInfoOnly: withFlightInfoOnly,
      withSearchByCode: withSearchByCode,
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
        'StringListingAirportContractSearchResultCollectionContract',
      ) as StringListingAirportContractSearchResultCollectionContract;
    }
    return null;
  }

  /// Search airports by IP address geolocation [TIER 2]
  ///
  /// **What are the airports closest to the customer, based on their IP address?**  **What are the airports closest to the location determined (geo-located) by a IP address?**    This endpoint determines the location by the IP address provided and then returns the list of the nearest airports  in the same way as `Search airports by location` endpoint does.     Please note:  * IP geo-location is not a precise method and it determines an approximate location only.  * At the moment airports having both ICAO and IATA code and flight schedules are present available only.    *Returns:* A list of airports found within the specified radius around the location approximated (geo-located) from the specified IP address.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   A valid public IP v4 address
  ///
  /// * [int] radiusKm (required):
  ///   Radius of search around specified location in kilometers (max. 1000 km)
  ///
  /// * [int] limit (required):
  ///   Maximum number of airports to be returned (max. 250)
  ///
  /// * [bool] withFlightInfoOnly:
  ///   If set to true, will only return airports which have flight data (scheduled or live) available. Default = false.
  Future<Response> searchAirportsByIpGeoLocationWithHttpInfo(
    String q,
    int radiusKm,
    int limit, {
    bool? withFlightInfoOnly,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/airports/search/ip';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'q', q));
    queryParams.addAll(_queryParams('', 'radiusKm', radiusKm));
    queryParams.addAll(_queryParams('', 'limit', limit));
    if (withFlightInfoOnly != null) {
      queryParams
          .addAll(_queryParams('', 'withFlightInfoOnly', withFlightInfoOnly));
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

  /// Search airports by IP address geolocation [TIER 2]
  ///
  /// **What are the airports closest to the customer, based on their IP address?**  **What are the airports closest to the location determined (geo-located) by a IP address?**    This endpoint determines the location by the IP address provided and then returns the list of the nearest airports  in the same way as `Search airports by location` endpoint does.     Please note:  * IP geo-location is not a precise method and it determines an approximate location only.  * At the moment airports having both ICAO and IATA code and flight schedules are present available only.    *Returns:* A list of airports found within the specified radius around the location approximated (geo-located) from the specified IP address.
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   A valid public IP v4 address
  ///
  /// * [int] radiusKm (required):
  ///   Radius of search around specified location in kilometers (max. 1000 km)
  ///
  /// * [int] limit (required):
  ///   Maximum number of airports to be returned (max. 250)
  ///
  /// * [bool] withFlightInfoOnly:
  ///   If set to true, will only return airports which have flight data (scheduled or live) available. Default = false.
  Future<GeoCoordinatesContractListingAirportContractSearchResultCollectionContract?>
      searchAirportsByIpGeoLocation(
    String q,
    int radiusKm,
    int limit, {
    bool? withFlightInfoOnly,
  }) async {
    final response = await searchAirportsByIpGeoLocationWithHttpInfo(
      q,
      radiusKm,
      limit,
      withFlightInfoOnly: withFlightInfoOnly,
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
        'GeoCoordinatesContractListingAirportContractSearchResultCollectionContract',
      ) as GeoCoordinatesContractListingAirportContractSearchResultCollectionContract;
    }
    return null;
  }

  /// Search airports by location [TIER 2]
  ///
  /// **What are the airports closest to the location?**    At the moment airports having both ICAO and IATA code and flight schedules are present available only.    *Returns:* A list of airports found within the specified radius around the specified location.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [double] lat (required):
  ///   Latitude location coordinate in decimal format (between -90 and 90)
  ///
  /// * [double] lon (required):
  ///   Longitude location coordinate in decimal format (between -180 and 180)
  ///
  /// * [int] radiusKm (required):
  ///   Radius of search around specified location in kilometers (max. 1000 km)
  ///
  /// * [int] limit (required):
  ///   Maximum number of airports to be returned (max. 250)
  ///
  /// * [bool] withFlightInfoOnly:
  ///   If set to true, will only return airports which have flight data (scheduled or live) available. Default = false.
  Future<Response> searchAirportsByLocationWithHttpInfo(
    double lat,
    double lon,
    int radiusKm,
    int limit, {
    bool? withFlightInfoOnly,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/airports/search/location';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'lat', lat));
    queryParams.addAll(_queryParams('', 'lon', lon));
    queryParams.addAll(_queryParams('', 'radiusKm', radiusKm));
    queryParams.addAll(_queryParams('', 'limit', limit));
    if (withFlightInfoOnly != null) {
      queryParams
          .addAll(_queryParams('', 'withFlightInfoOnly', withFlightInfoOnly));
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

  /// Search airports by location [TIER 2]
  ///
  /// **What are the airports closest to the location?**    At the moment airports having both ICAO and IATA code and flight schedules are present available only.    *Returns:* A list of airports found within the specified radius around the specified location.
  ///
  /// Parameters:
  ///
  /// * [double] lat (required):
  ///   Latitude location coordinate in decimal format (between -90 and 90)
  ///
  /// * [double] lon (required):
  ///   Longitude location coordinate in decimal format (between -180 and 180)
  ///
  /// * [int] radiusKm (required):
  ///   Radius of search around specified location in kilometers (max. 1000 km)
  ///
  /// * [int] limit (required):
  ///   Maximum number of airports to be returned (max. 250)
  ///
  /// * [bool] withFlightInfoOnly:
  ///   If set to true, will only return airports which have flight data (scheduled or live) available. Default = false.
  Future<GeoCoordinatesContractListingAirportContractSearchResultCollectionContract?>
      searchAirportsByLocation(
    double lat,
    double lon,
    int radiusKm,
    int limit, {
    bool? withFlightInfoOnly,
  }) async {
    final response = await searchAirportsByLocationWithHttpInfo(
      lat,
      lon,
      radiusKm,
      limit,
      withFlightInfoOnly: withFlightInfoOnly,
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
        'GeoCoordinatesContractListingAirportContractSearchResultCollectionContract',
      ) as GeoCoordinatesContractListingAirportContractSearchResultCollectionContract;
    }
    return null;
  }
}

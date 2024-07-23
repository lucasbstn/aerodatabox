//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HealthcheckAPIApi {
  HealthcheckAPIApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Data feed services status by ICAO code [FREE TIER]
  ///
  /// **What is the status of data updates for the airport?**    At the moment airports having both ICAO and IATA code are present in database only.    *Returns:* Current status of airport data feed services (live flight updates, flight schedules, etc.) for requested airport.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] icao (required):
  ///   4-digit ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.). Full, stripped and any case formats are acceptable.
  Future<Response> getAirportFeedStatusWithHttpInfo(
    String icao,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/health/services/airports/{icao}/feeds'.replaceAll('{icao}', icao);

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

  /// Data feed services status by ICAO code [FREE TIER]
  ///
  /// **What is the status of data updates for the airport?**    At the moment airports having both ICAO and IATA code are present in database only.    *Returns:* Current status of airport data feed services (live flight updates, flight schedules, etc.) for requested airport.
  ///
  /// Parameters:
  ///
  /// * [String] icao (required):
  ///   4-digit ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.). Full, stripped and any case formats are acceptable.
  Future<AirportFeedServiceStatusContract?> getAirportFeedStatus(
    String icao,
  ) async {
    final response = await getAirportFeedStatusWithHttpInfo(
      icao,
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
        'AirportFeedServiceStatusContract',
      ) as AirportFeedServiceStatusContract;
    }
    return null;
  }

  /// Airports supporting data feed service [FREE TIER]
  ///
  /// **Which airports support flight schedules?** or **Which airports support live flight updates?**     At the moment airports having both ICAO and IATA code are present in database only.     *Returns:* Collection ICAO codes of airports supporting specified airport data feed service.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FeedServiceEnum] service (required):
  ///   Airport data feed service name
  Future<Response> getFeedAirportsWithHttpInfo(
    FeedServiceEnum service,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/health/services/feeds/{service}/airports'
        .replaceAll('{service}', service.toString());

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

  /// Airports supporting data feed service [FREE TIER]
  ///
  /// **Which airports support flight schedules?** or **Which airports support live flight updates?**     At the moment airports having both ICAO and IATA code are present in database only.     *Returns:* Collection ICAO codes of airports supporting specified airport data feed service.
  ///
  /// Parameters:
  ///
  /// * [FeedServiceEnum] service (required):
  ///   Airport data feed service name
  Future<StringCollectionContract?> getFeedAirports(
    FeedServiceEnum service,
  ) async {
    final response = await getFeedAirportsWithHttpInfo(
      service,
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
        'StringCollectionContract',
      ) as StringCollectionContract;
    }
    return null;
  }

  /// General status of data feed services [FREE TIER]
  ///
  /// **Which is the general health of the data feed service?**     *Returns:* Status of the service in general, regardless of the airports
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FeedServiceEnum] service (required):
  ///   Data feed service name
  ///
  /// * [bool] withHttpCode:
  ///   If true, reflect status of the service in the HTTP code of the response (if the service is down, HTTP code will be 503).
  Future<Response> getFeedServiceStatusWithHttpInfo(
    FeedServiceEnum service, {
    bool? withHttpCode,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/health/services/feeds/{service}'
        .replaceAll('{service}', service.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (withHttpCode != null) {
      queryParams.addAll(_queryParams('', 'withHttpCode', withHttpCode));
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

  /// General status of data feed services [FREE TIER]
  ///
  /// **Which is the general health of the data feed service?**     *Returns:* Status of the service in general, regardless of the airports
  ///
  /// Parameters:
  ///
  /// * [FeedServiceEnum] service (required):
  ///   Data feed service name
  ///
  /// * [bool] withHttpCode:
  ///   If true, reflect status of the service in the HTTP code of the response (if the service is down, HTTP code will be 503).
  Future<FeedServiceStatusContract?> getFeedServiceStatus(
    FeedServiceEnum service, {
    bool? withHttpCode,
  }) async {
    final response = await getFeedServiceStatusWithHttpInfo(
      service,
      withHttpCode: withHttpCode,
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
        'FeedServiceStatusContract',
      ) as FeedServiceStatusContract;
    }
    return null;
  }
}

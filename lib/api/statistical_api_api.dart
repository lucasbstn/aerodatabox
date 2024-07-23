//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StatisticalAPIApi {
  StatisticalAPIApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Airport delays (current or historical moment) [TIER 3]
  ///
  /// **What is the current or historical average delay in the airport?** or **What is the delay index of the airport right now or at a moment in past?**    Please read more about airport delays on here: https://aerodatabox.com/api-airport-delays/    *Returns*: Statistical delay information about delays (median delay, delay index, cancelled flights) of arrivals and departures for the requested airport, represented by:  * a single `AirportDelayContract` item displaying the delay information based on flight movements within the 2 hours prior to the current moment, if no `dateLocal` is specified;  * a single `AirportDelayContract` item displaying the delay information based on flight movements within the 2 hours prior to the moment requested in `dateLocal`, if `dateLocal` is specified;
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
  /// * [DateTime] dateLocal:
  ///   The moment of time for / from which delay data is requested (local time, format: YYYY-MM-DDTHH:mm).   Default - current time.
  Future<Response> getAirportDelayWithHttpInfo(
    AirportCodesByEnum codeType,
    String code, {
    DateTime? dateLocal,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/airports/{codeType}/{code}/delays/{dateLocal}'
        .replaceAll('{codeType}', codeType.toString())
        .replaceAll('{code}', code)
        .replaceAll('{dateLocal}', dateLocal.toString());

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

  /// Airport delays (current or historical moment) [TIER 3]
  ///
  /// **What is the current or historical average delay in the airport?** or **What is the delay index of the airport right now or at a moment in past?**    Please read more about airport delays on here: https://aerodatabox.com/api-airport-delays/    *Returns*: Statistical delay information about delays (median delay, delay index, cancelled flights) of arrivals and departures for the requested airport, represented by:  * a single `AirportDelayContract` item displaying the delay information based on flight movements within the 2 hours prior to the current moment, if no `dateLocal` is specified;  * a single `AirportDelayContract` item displaying the delay information based on flight movements within the 2 hours prior to the moment requested in `dateLocal`, if `dateLocal` is specified;
  ///
  /// Parameters:
  ///
  /// * [AirportCodesByEnum] codeType (required):
  ///   Type of code to search airport by (`iata` or `icao`)
  ///
  /// * [String] code (required):
  ///   If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
  ///
  /// * [DateTime] dateLocal:
  ///   The moment of time for / from which delay data is requested (local time, format: YYYY-MM-DDTHH:mm).   Default - current time.
  Future<AirportDelayContract?> getAirportDelay(
    AirportCodesByEnum codeType,
    String code, {
    DateTime? dateLocal,
  }) async {
    final response = await getAirportDelayWithHttpInfo(
      codeType,
      code,
      dateLocal: dateLocal,
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
        'AirportDelayContract',
      ) as AirportDelayContract;
    }
    return null;
  }

  /// Airport delays (historical period) [TIER 3]
  ///
  /// **What were the delays within a specific period of time?** or **How the delays changed  within a specific period of time?**    Please read more about airport delays on here: https://aerodatabox.com/api-airport-delays/    *Returns*: Statistical delay information about delays (median delay, delay index, cancelled flights) of arrivals and departures for the requested airport, represented by a collection of `AiportDelayContract` items displaying the delay information at multiple moments within the period between `dateLocal` and `dateToLocal`.
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
  /// * [DateTime] dateFromLocal (required):
  ///   The beginning of the period of time for which delay data is requested (local time, format: YYYY-MM-DDTHH:mm).
  ///
  /// * [DateTime] dateToLocal (required):
  ///   The end of the period of time for which delay data is requested (local time, format: YYYY-MM-DDTHH:mm).
  Future<Response> getAirportDelaysWithHttpInfo(
    AirportCodesByEnum codeType,
    String code,
    DateTime dateFromLocal,
    DateTime dateToLocal,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/airports/{codeType}/{code}/delays/{dateFromLocal}/{dateToLocal}'
            .replaceAll('{codeType}', codeType.toString())
            .replaceAll('{code}', code)
            .replaceAll('{dateFromLocal}', dateFromLocal.toString())
            .replaceAll('{dateToLocal}', dateToLocal.toString());

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

  /// Airport delays (historical period) [TIER 3]
  ///
  /// **What were the delays within a specific period of time?** or **How the delays changed  within a specific period of time?**    Please read more about airport delays on here: https://aerodatabox.com/api-airport-delays/    *Returns*: Statistical delay information about delays (median delay, delay index, cancelled flights) of arrivals and departures for the requested airport, represented by a collection of `AiportDelayContract` items displaying the delay information at multiple moments within the period between `dateLocal` and `dateToLocal`.
  ///
  /// Parameters:
  ///
  /// * [AirportCodesByEnum] codeType (required):
  ///   Type of code to search airport by (`iata` or `icao`)
  ///
  /// * [String] code (required):
  ///   If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
  ///
  /// * [DateTime] dateFromLocal (required):
  ///   The beginning of the period of time for which delay data is requested (local time, format: YYYY-MM-DDTHH:mm).
  ///
  /// * [DateTime] dateToLocal (required):
  ///   The end of the period of time for which delay data is requested (local time, format: YYYY-MM-DDTHH:mm).
  Future<List<AirportDelayContract>?> getAirportDelays(
    AirportCodesByEnum codeType,
    String code,
    DateTime dateFromLocal,
    DateTime dateToLocal,
  ) async {
    final response = await getAirportDelaysWithHttpInfo(
      codeType,
      code,
      dateFromLocal,
      dateToLocal,
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
              responseBody, 'List<AirportDelayContract>') as List)
          .cast<AirportDelayContract>()
          .toList(growable: false);
    }
    return null;
  }

  /// Global delays (current or historical moment) [TIER 3]
  ///
  /// **What is the current or historical delay situation in all airports?** or **What is the delay index of all airports globally right now or at a moment in past?**    Please read more about airport delays on here: https://aerodatabox.com/api-airport-delays/    *Returns*: Statistical delay information about delays (median delay, delay index, cancelled flights) of arrivals and departures for all known airports, represented by a collection of items sorted by   the average of arrival and departure index, descending order (from worst to best). Only qualifying and recent enough delay statistics records are returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] dateUtc:
  ///   The moment of time for / from which delay data is requested (UTC time, format: YYYY-MM-DDTHH:mm).  Default - current time.
  Future<Response> getAllAirportDelaysWithHttpInfo({
    DateTime? dateUtc,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/airports/delays/{dateUtc}'
        .replaceAll('{dateUtc}', dateUtc.toString());

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

  /// Global delays (current or historical moment) [TIER 3]
  ///
  /// **What is the current or historical delay situation in all airports?** or **What is the delay index of all airports globally right now or at a moment in past?**    Please read more about airport delays on here: https://aerodatabox.com/api-airport-delays/    *Returns*: Statistical delay information about delays (median delay, delay index, cancelled flights) of arrivals and departures for all known airports, represented by a collection of items sorted by   the average of arrival and departure index, descending order (from worst to best). Only qualifying and recent enough delay statistics records are returned.
  ///
  /// Parameters:
  ///
  /// * [DateTime] dateUtc:
  ///   The moment of time for / from which delay data is requested (UTC time, format: YYYY-MM-DDTHH:mm).  Default - current time.
  Future<AirportDelayContract?> getAllAirportDelays({
    DateTime? dateUtc,
  }) async {
    final response = await getAllAirportDelaysWithHttpInfo(
      dateUtc: dateUtc,
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
        'AirportDelayContract',
      ) as AirportDelayContract;
    }
    return null;
  }

  /// Flight delay statistics by flight number [TIER 3]
  ///
  /// **By how much the flight is delayed in average?**    Information is only available for flights which were tracked with live updates at least at origin or at destination within the last 90 days.    *Returns:* delay statistics for the flight with specified number.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] number (required):
  ///   Flight number (with or without spaces, IATA or ICAO, any case formats are acceptable, e.g. KL1395, Klm 1395)
  Future<Response> getFlightDelaysWithHttpInfo(
    String number,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/flights/{number}/delays'.replaceAll('{number}', number);

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

  /// Flight delay statistics by flight number [TIER 3]
  ///
  /// **By how much the flight is delayed in average?**    Information is only available for flights which were tracked with live updates at least at origin or at destination within the last 90 days.    *Returns:* delay statistics for the flight with specified number.
  ///
  /// Parameters:
  ///
  /// * [String] number (required):
  ///   Flight number (with or without spaces, IATA or ICAO, any case formats are acceptable, e.g. KL1395, Klm 1395)
  Future<FlightLegDelayContract?> getFlightDelays(
    String number,
  ) async {
    final response = await getFlightDelaysWithHttpInfo(
      number,
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
        'FlightLegDelayContract',
      ) as FlightLegDelayContract;
    }
    return null;
  }

  /// Airport routes and daily flight destinations [TIER 3]
  ///
  /// **What are the most popular routes from an airport?** or **Where I can fly from an airport?** or   **How many daily flights to different destinations from an airport?**    The data will only be available for airports which have at least schedules information available.   If the airport is also covered with live or ADS-B coverage, the quality will improve greatly as it will  be based on real data rather than on static scheduled data. To check if an airport is tracked and on which level,   use `/health/services/airports/{icao}/feeds` endpoint. You can also use `/health/services/feeds/{service}/airports` to get   the list of covered airports.     At the moment airports having both ICAO and IATA code and flight schedules are present available only.    *Returns:* List of routes and daily flights amount departing from an airport.
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
  /// * [DateTime] dateLocal:
  ///   Local date at the airport (default = null).  If specified, returns statistics based on 7 days prior to the date specified.  Otherwise, returns statistics based on 7 days prior to the current local date at the airport.
  Future<Response> getRouteDailyStatisticsWithHttpInfo(
    AirportCodesByEnum codeType,
    String code, {
    DateTime? dateLocal,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/airports/{codeType}/{code}/stats/routes/daily/{dateLocal}'
        .replaceAll('{codeType}', codeType.toString())
        .replaceAll('{code}', code)
        .replaceAll('{dateLocal}', dateLocal.toString());

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

  /// Airport routes and daily flight destinations [TIER 3]
  ///
  /// **What are the most popular routes from an airport?** or **Where I can fly from an airport?** or   **How many daily flights to different destinations from an airport?**    The data will only be available for airports which have at least schedules information available.   If the airport is also covered with live or ADS-B coverage, the quality will improve greatly as it will  be based on real data rather than on static scheduled data. To check if an airport is tracked and on which level,   use `/health/services/airports/{icao}/feeds` endpoint. You can also use `/health/services/feeds/{service}/airports` to get   the list of covered airports.     At the moment airports having both ICAO and IATA code and flight schedules are present available only.    *Returns:* List of routes and daily flights amount departing from an airport.
  ///
  /// Parameters:
  ///
  /// * [AirportCodesByEnum] codeType (required):
  ///   Type of code to search airport by (`iata` or `icao`)
  ///
  /// * [String] code (required):
  ///   If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
  ///
  /// * [DateTime] dateLocal:
  ///   Local date at the airport (default = null).  If specified, returns statistics based on 7 days prior to the date specified.  Otherwise, returns statistics based on 7 days prior to the current local date at the airport.
  Future<DailyRouteStatContract?> getRouteDailyStatistics(
    AirportCodesByEnum codeType,
    String code, {
    DateTime? dateLocal,
  }) async {
    final response = await getRouteDailyStatisticsWithHttpInfo(
      codeType,
      code,
      dateLocal: dateLocal,
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
        'DailyRouteStatContract',
      ) as DailyRouteStatContract;
    }
    return null;
  }
}

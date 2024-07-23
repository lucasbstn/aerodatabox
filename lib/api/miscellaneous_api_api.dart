//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MiscellaneousAPIApi {
  MiscellaneousAPIApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 🤖 Distance and flight time between airports [TIER 2]
  ///
  /// **What is the great circle distance between airports?**   **What is approximate flight time between airports?**  ** What is the flight time between airports based on history of flights and/or aircraft type?** (machine-learning based)    Use `flightTimeModel` = <a href=\"#model-ModelFlightTimeEnum\">ML01</a> to get more accurate results based on historical performance of flights on route and aircraft type.    *Returns:* Distance and approximate flight time between airports, if both airports found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AirportCodesByEnum] codeType (required):
  ///   Type of code to search airport by (`iata` or `icao`)
  ///
  /// * [String] codeFrom (required):
  ///   If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the origin airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the origin  airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
  ///
  /// * [String] codeTo (required):
  ///   If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the destination airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the destination  airport (e.g.: AMS, SFO, LAX, etc.);  * `local`, then the format of this field is subject to specific standards of relevant national or local airport codification systems.    Full, stripped and any case formats are acceptable.
  ///
  /// * [String] aircraftName:
  ///   Aircraft type name (free text).   If specified and `flightTimeModel` is set to <a href=\"#model-ModelFlightTimeEnum\">ML01</a>, the aircraft type   will be attempted to be taken into to provide more accurate result.  If `flightTimeModel` is set to <a href=\"#model-ModelFlightTimeEnum\">Standard</a>, the value is ignored.
  ///
  /// * [ModelFlightTimeEnum] flightTimeModel:
  ///   Model of calculation of the flight time. Default is <a href=\"#model-ModelFlightTimeEnum\"></a>  More advanced model(s) is available, including machine learning-based models.  See <a href=\"#model-ModelFlightTimeEnum\">ModelFlightTimeEnum</a> for details.
  Future<Response> getAirportDistanceTimeWithHttpInfo(
    AirportCodesByEnum codeType,
    String codeFrom,
    String codeTo, {
    String? aircraftName,
    ModelFlightTimeEnum? flightTimeModel,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/airports/{codeType}/{codeFrom}/distance-time/{codeTo}'
        .replaceAll('{codeType}', codeType.toString())
        .replaceAll('{codeFrom}', codeFrom)
        .replaceAll('{codeTo}', codeTo);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (aircraftName != null) {
      queryParams.addAll(_queryParams('', 'aircraftName', aircraftName));
    }
    if (flightTimeModel != null) {
      queryParams.addAll(_queryParams('', 'flightTimeModel', flightTimeModel));
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

  /// 🤖 Distance and flight time between airports [TIER 2]
  ///
  /// **What is the great circle distance between airports?**   **What is approximate flight time between airports?**  ** What is the flight time between airports based on history of flights and/or aircraft type?** (machine-learning based)    Use `flightTimeModel` = <a href=\"#model-ModelFlightTimeEnum\">ML01</a> to get more accurate results based on historical performance of flights on route and aircraft type.    *Returns:* Distance and approximate flight time between airports, if both airports found.
  ///
  /// Parameters:
  ///
  /// * [AirportCodesByEnum] codeType (required):
  ///   Type of code to search airport by (`iata` or `icao`)
  ///
  /// * [String] codeFrom (required):
  ///   If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the origin airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the origin  airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
  ///
  /// * [String] codeTo (required):
  ///   If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the destination airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the destination  airport (e.g.: AMS, SFO, LAX, etc.);  * `local`, then the format of this field is subject to specific standards of relevant national or local airport codification systems.    Full, stripped and any case formats are acceptable.
  ///
  /// * [String] aircraftName:
  ///   Aircraft type name (free text).   If specified and `flightTimeModel` is set to <a href=\"#model-ModelFlightTimeEnum\">ML01</a>, the aircraft type   will be attempted to be taken into to provide more accurate result.  If `flightTimeModel` is set to <a href=\"#model-ModelFlightTimeEnum\">Standard</a>, the value is ignored.
  ///
  /// * [ModelFlightTimeEnum] flightTimeModel:
  ///   Model of calculation of the flight time. Default is <a href=\"#model-ModelFlightTimeEnum\"></a>  More advanced model(s) is available, including machine learning-based models.  See <a href=\"#model-ModelFlightTimeEnum\">ModelFlightTimeEnum</a> for details.
  Future<AirportDistanceTimeContract?> getAirportDistanceTime(
    AirportCodesByEnum codeType,
    String codeFrom,
    String codeTo, {
    String? aircraftName,
    ModelFlightTimeEnum? flightTimeModel,
  }) async {
    final response = await getAirportDistanceTimeWithHttpInfo(
      codeType,
      codeFrom,
      codeTo,
      aircraftName: aircraftName,
      flightTimeModel: flightTimeModel,
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
        'AirportDistanceTimeContract',
      ) as AirportDistanceTimeContract;
    }
    return null;
  }

  /// Current local time at the airport [TIER 1]
  ///
  /// **What is the current local time at the airport?**    At the moment airports having both ICAO and IATA code are present in database only.    *Returns:* Local time at the airport, if airport is found.
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
  Future<Response> getAirportLocalTimeWithHttpInfo(
    AirportCodesByEnum codeType,
    String code,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/airports/{codeType}/{code}/time/local'
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

  /// Current local time at the airport [TIER 1]
  ///
  /// **What is the current local time at the airport?**    At the moment airports having both ICAO and IATA code are present in database only.    *Returns:* Local time at the airport, if airport is found.
  ///
  /// Parameters:
  ///
  /// * [AirportCodesByEnum] codeType (required):
  ///   Type of code to search airport by (`iata` or `icao`)
  ///
  /// * [String] code (required):
  ///   If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
  Future<AirportLocalTimeContract?> getAirportLocalTime(
    AirportCodesByEnum codeType,
    String code,
  ) async {
    final response = await getAirportLocalTimeWithHttpInfo(
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
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'AirportLocalTimeContract',
      ) as AirportLocalTimeContract;
    }
    return null;
  }

  /// Solar and day time at the airport [TIER 1]
  ///
  /// **What is the sun position in the sky now at a specific time at the airport?** or  **When does the sun rise and set at the airport today or on the other day at the airport?** or  **Is it dark now or is it day at the airport?**    At the moment airports having both ICAO and IATA code are present in database only.    *Returns:* If airport is found, returns various solar-related information: sun position in the sky,  daytime (day, night, twilight: civil, nautical, astronomical, golden/blue hours),   sunrise and sunset times, etc.
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
  ///   The moment of time which solar data is request for (local time, format: YYYY-MM-DDTHH:mm).   Default - current time.
  Future<Response> getAirportSolarTimeWithHttpInfo(
    AirportCodesByEnum codeType,
    String code, {
    DateTime? dateLocal,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/airports/{codeType}/{code}/time/solar/{dateLocal}'
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

  /// Solar and day time at the airport [TIER 1]
  ///
  /// **What is the sun position in the sky now at a specific time at the airport?** or  **When does the sun rise and set at the airport today or on the other day at the airport?** or  **Is it dark now or is it day at the airport?**    At the moment airports having both ICAO and IATA code are present in database only.    *Returns:* If airport is found, returns various solar-related information: sun position in the sky,  daytime (day, night, twilight: civil, nautical, astronomical, golden/blue hours),   sunrise and sunset times, etc.
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
  ///   The moment of time which solar data is request for (local time, format: YYYY-MM-DDTHH:mm).   Default - current time.
  Future<SolarStateContract?> getAirportSolarTime(
    AirportCodesByEnum codeType,
    String code, {
    DateTime? dateLocal,
  }) async {
    final response = await getAirportSolarTimeWithHttpInfo(
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
        'SolarStateContract',
      ) as SolarStateContract;
    }
    return null;
  }

  /// Weather / forecast at the airport [TIER 2]
  ///
  /// **What is the current weather at the airport?** and **What the the weather forecast for the airport?**    Please note: this endpoint is designed to give a brief simplified weather overview for the airport on-demand. This miscellaneous endpoint  is currently not designed to provide extensive weather information and is in no way replacement for specialized weather APIs.    *Returns:* Collection of a single or multiple weather records for the airport, if airport is found and weather information could be retrieved.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AirportCodesByEnum] codeType (required):
  ///   Type of code to search airport by (`iata` or `icao`)
  ///
  /// * [String] code (required):
  ///   If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the origin airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the origin  airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
  ///
  /// * [DateTime] fromLocal:
  ///   Beginning of the search range (local time, format: YYYY-MM-DDTHH:mm).   Must be in range from current time up to 48 hours in future.  Default - current time.
  ///
  /// * [DateTime] toLocal:
  ///   End of the search range (local time, format: YYYY-MM-DDTHH:mm).   Must be equal to or more than beginning of the search range specified in `fromLocal`, up to 48 hours in future.  Default equal to `fromLocal`.
  Future<Response> getAirportWeatherWithHttpInfo(
    AirportCodesByEnum codeType,
    String code, {
    DateTime? fromLocal,
    DateTime? toLocal,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/airports/{codeType}/{code}/weather/{fromLocal}/{toLocal}'
        .replaceAll('{codeType}', codeType.toString())
        .replaceAll('{code}', code)
        .replaceAll('{fromLocal}', fromLocal.toString())
        .replaceAll('{toLocal}', toLocal.toString());

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

  /// Weather / forecast at the airport [TIER 2]
  ///
  /// **What is the current weather at the airport?** and **What the the weather forecast for the airport?**    Please note: this endpoint is designed to give a brief simplified weather overview for the airport on-demand. This miscellaneous endpoint  is currently not designed to provide extensive weather information and is in no way replacement for specialized weather APIs.    *Returns:* Collection of a single or multiple weather records for the airport, if airport is found and weather information could be retrieved.
  ///
  /// Parameters:
  ///
  /// * [AirportCodesByEnum] codeType (required):
  ///   Type of code to search airport by (`iata` or `icao`)
  ///
  /// * [String] code (required):
  ///   If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the origin airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the origin  airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
  ///
  /// * [DateTime] fromLocal:
  ///   Beginning of the search range (local time, format: YYYY-MM-DDTHH:mm).   Must be in range from current time up to 48 hours in future.  Default - current time.
  ///
  /// * [DateTime] toLocal:
  ///   End of the search range (local time, format: YYYY-MM-DDTHH:mm).   Must be equal to or more than beginning of the search range specified in `fromLocal`, up to 48 hours in future.  Default equal to `fromLocal`.
  Future<List<WeatherStateContract>?> getAirportWeather(
    AirportCodesByEnum codeType,
    String code, {
    DateTime? fromLocal,
    DateTime? toLocal,
  }) async {
    final response = await getAirportWeatherWithHttpInfo(
      codeType,
      code,
      fromLocal: fromLocal,
      toLocal: toLocal,
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
              responseBody, 'List<WeatherStateContract>') as List)
          .cast<WeatherStateContract>()
          .toList(growable: false);
    }
    return null;
  }
}

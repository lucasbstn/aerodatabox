//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FlightAPIApi {
  FlightAPIApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// FIDS (airport departures and arrivals) - by local time range [TIER 2]
  ///
  /// **What are current departures or arrivals at the airport?** or **What is the flight schedule at the airport?** or **What is flight history at the airport?**    Flights may contain live updates with corresponding information related to the actual progress of the flight   (including actual/estimated arrival/departure times). In this case this endpoint serves as a FIDS endpoint.   Presense of live updates is subject to data coverage: not all airports have this coverage in our system.    Otherwise flight information will be limited to scheduled only and will not be updated real-time. Much more airports  have this type of coverage. To check if airport is tracked and on which level, use *_/health/services/airports/{icao}/feeds* endpoint.   You can also use *_/health/services/feeds/{service}/airports* to get the list of supported airports for this  or that layer of coverage. To learn more about the data coverage, refer to *https://www.aerodatabox.com/data-coverage*.    *Returns*: the list of arriving and/or departing flights scheduled and/or planned and/or commenced within a specified   time range for a specified airport.
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
  /// * [DateTime] fromLocal (required):
  ///   Beginning of the search range (local time, format: YYYY-MM-DDTHH:mm)
  ///
  /// * [DateTime] toLocal (required):
  ///   End of the search range (local time, format: YYYY-MM-DDTHH:mm). Must be more than beginning of the search range by no more than 12 hours.
  ///
  /// * [FlightDirection] direction:
  ///   Direction of flights: Arrival, Departure or Both (default)
  ///
  /// * [bool] withLeg:
  ///   If set to true, the result will include movement information from airport opposite in this flight leg (airport of origin for arriving flight or airport of destination for departing flight).  In this case, Movement property will be replaced with Departure and Arrival properties for each flight.  Default: false.
  ///
  /// * [bool] withCancelled:
  ///   If set to true, result will include cancelled, divered, likely cancelled (CanceledUncertain) flights.  Default: true.
  ///
  /// * [bool] withCodeshared:
  ///   If set to true, the result will include flights with all code-shared statuses.  Otherwise, code-sharing flights will be exclued. For airports, where no information about code-share statuses  of flights are supplied (all flights are CodeshareStatus=Unknown), complex filtering will be applied   to determine which flights are likely to be operational (caution: false results are possible).
  ///
  /// * [bool] withCargo:
  ///   If set to true, the result will include cargo flights (subject to availability).
  ///
  /// * [bool] withPrivate:
  ///   If set to true, the result will include private flights (subject to availability).
  ///
  /// * [bool] withLocation:
  ///   If set to true, each currently active flight within the result will be populated   with its present real-time location, altitude, speed and track (subject to availability).
  Future<Response> getAirportFlightsWithHttpInfo(
    AirportCodesByEnum codeType,
    String code,
    DateTime fromLocal,
    DateTime toLocal, {
    FlightDirection? direction,
    bool? withLeg,
    bool? withCancelled,
    bool? withCodeshared,
    bool? withCargo,
    bool? withPrivate,
    bool? withLocation,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/flights/airports/{codeType}/{code}/{fromLocal}/{toLocal}'
        .replaceAll('{codeType}', codeType.toString())
        .replaceAll('{code}', code)
        .replaceAll('{fromLocal}', fromLocal.toString())
        .replaceAll('{toLocal}', toLocal.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (direction != null) {
      queryParams.addAll(_queryParams('', 'direction', direction));
    }
    if (withLeg != null) {
      queryParams.addAll(_queryParams('', 'withLeg', withLeg));
    }
    if (withCancelled != null) {
      queryParams.addAll(_queryParams('', 'withCancelled', withCancelled));
    }
    if (withCodeshared != null) {
      queryParams.addAll(_queryParams('', 'withCodeshared', withCodeshared));
    }
    if (withCargo != null) {
      queryParams.addAll(_queryParams('', 'withCargo', withCargo));
    }
    if (withPrivate != null) {
      queryParams.addAll(_queryParams('', 'withPrivate', withPrivate));
    }
    if (withLocation != null) {
      queryParams.addAll(_queryParams('', 'withLocation', withLocation));
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

  /// FIDS (airport departures and arrivals) - by local time range [TIER 2]
  ///
  /// **What are current departures or arrivals at the airport?** or **What is the flight schedule at the airport?** or **What is flight history at the airport?**    Flights may contain live updates with corresponding information related to the actual progress of the flight   (including actual/estimated arrival/departure times). In this case this endpoint serves as a FIDS endpoint.   Presense of live updates is subject to data coverage: not all airports have this coverage in our system.    Otherwise flight information will be limited to scheduled only and will not be updated real-time. Much more airports  have this type of coverage. To check if airport is tracked and on which level, use *_/health/services/airports/{icao}/feeds* endpoint.   You can also use *_/health/services/feeds/{service}/airports* to get the list of supported airports for this  or that layer of coverage. To learn more about the data coverage, refer to *https://www.aerodatabox.com/data-coverage*.    *Returns*: the list of arriving and/or departing flights scheduled and/or planned and/or commenced within a specified   time range for a specified airport.
  ///
  /// Parameters:
  ///
  /// * [AirportCodesByEnum] codeType (required):
  ///   Type of code to search airport by (`iata` or `icao`)
  ///
  /// * [String] code (required):
  ///   If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
  ///
  /// * [DateTime] fromLocal (required):
  ///   Beginning of the search range (local time, format: YYYY-MM-DDTHH:mm)
  ///
  /// * [DateTime] toLocal (required):
  ///   End of the search range (local time, format: YYYY-MM-DDTHH:mm). Must be more than beginning of the search range by no more than 12 hours.
  ///
  /// * [FlightDirection] direction:
  ///   Direction of flights: Arrival, Departure or Both (default)
  ///
  /// * [bool] withLeg:
  ///   If set to true, the result will include movement information from airport opposite in this flight leg (airport of origin for arriving flight or airport of destination for departing flight).  In this case, Movement property will be replaced with Departure and Arrival properties for each flight.  Default: false.
  ///
  /// * [bool] withCancelled:
  ///   If set to true, result will include cancelled, divered, likely cancelled (CanceledUncertain) flights.  Default: true.
  ///
  /// * [bool] withCodeshared:
  ///   If set to true, the result will include flights with all code-shared statuses.  Otherwise, code-sharing flights will be exclued. For airports, where no information about code-share statuses  of flights are supplied (all flights are CodeshareStatus=Unknown), complex filtering will be applied   to determine which flights are likely to be operational (caution: false results are possible).
  ///
  /// * [bool] withCargo:
  ///   If set to true, the result will include cargo flights (subject to availability).
  ///
  /// * [bool] withPrivate:
  ///   If set to true, the result will include private flights (subject to availability).
  ///
  /// * [bool] withLocation:
  ///   If set to true, each currently active flight within the result will be populated   with its present real-time location, altitude, speed and track (subject to availability).
  Future<AirportFidsContract?> getAirportFlights(
    AirportCodesByEnum codeType,
    String code,
    DateTime fromLocal,
    DateTime toLocal, {
    FlightDirection? direction,
    bool? withLeg,
    bool? withCancelled,
    bool? withCodeshared,
    bool? withCargo,
    bool? withPrivate,
    bool? withLocation,
  }) async {
    final response = await getAirportFlightsWithHttpInfo(
      codeType,
      code,
      fromLocal,
      toLocal,
      direction: direction,
      withLeg: withLeg,
      withCancelled: withCancelled,
      withCodeshared: withCodeshared,
      withCargo: withCargo,
      withPrivate: withPrivate,
      withLocation: withLocation,
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
        'AirportFidsContract',
      ) as AirportFidsContract;
    }
    return null;
  }

  /// FIDS (airport departures and arrivals) - by relative time / by current time [TIER 2]
  ///
  /// **What are current departures or arrivals at the airport?** or **What is the flight schedule at the airport?** or **What is flight history at the airport?**    Flights may contain live updates with corresponding information related to the actual progress of the flight   (including actual/estimated arrival/departure times). In this case this endpoint serves as a FIDS endpoint.   Presense of live updates is subject to data coverage: not all airports have this coverage in our system.    Otherwise flight information will be limited to scheduled only and will not be updated real-time. Much more airports  have this type of coverage. To check if airport is tracked and on which level, use *_/health/services/airports/{icao}/feeds* endpoint.   You can also use *_/health/services/feeds/{service}/airports* to get the list of supported airports for this  or that layer of coverage. To learn more about the data coverage, refer to *https://www.aerodatabox.com/data-coverage*.    *Returns*: the list of arriving and/or departing flights scheduled and/or planned and/or commenced within a time range specified   relatively to the current local time at the airport.
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
  /// * [int] offsetMinutes:
  ///   Beginning of the search range expressed in minutes relative to the current time at the airport (default: `-120`)
  ///
  /// * [int] durationMinutes:
  ///   Length (duration) of the search range expressed in minutes (default: `720`)
  ///
  /// * [FlightDirection] direction:
  ///   Direction of flights: Arrival, Departure or Both (default)
  ///
  /// * [bool] withLeg:
  ///   If set to true, the result will include movement information from airport opposite in this flight leg (airport of origin for arriving flight or airport of destination for departing flight).  In this case, Movement property will be replaced with Departure and Arrival properties for each flight.  Default: false.
  ///
  /// * [bool] withCancelled:
  ///   If set to true, result will include cancelled, divered, likely cancelled (CanceledUncertain) flights.  Default: true.
  ///
  /// * [bool] withCodeshared:
  ///   If set to true, the result will include flights with all code-shared statuses.  Otherwise, code-sharing flights will be exclued. For airports, where no information about code-share statuses  of flights are supplied (all flights are CodeshareStatus=Unknown), complex filtering will be applied   to determine which flights are likely to be operational (caution: false results are possible).
  ///
  /// * [bool] withCargo:
  ///   If set to true, the result will include cargo flights (subject to availability).
  ///
  /// * [bool] withPrivate:
  ///   If set to true, the result will include private flights (subject to availability).
  ///
  /// * [bool] withLocation:
  ///   If set to true, each currently active flight within the result will be populated   with its present real-time location, altitude, speed and track (subject to availability).
  Future<Response> getAirportFlightsRelativeWithHttpInfo(
    AirportCodesByEnum codeType,
    String code, {
    int? offsetMinutes,
    int? durationMinutes,
    FlightDirection? direction,
    bool? withLeg,
    bool? withCancelled,
    bool? withCodeshared,
    bool? withCargo,
    bool? withPrivate,
    bool? withLocation,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/flights/airports/{codeType}/{code}'
        .replaceAll('{codeType}', codeType.toString())
        .replaceAll('{code}', code);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (offsetMinutes != null) {
      queryParams.addAll(_queryParams('', 'offsetMinutes', offsetMinutes));
    }
    if (durationMinutes != null) {
      queryParams.addAll(_queryParams('', 'durationMinutes', durationMinutes));
    }
    if (direction != null) {
      queryParams.addAll(_queryParams('', 'direction', direction));
    }
    if (withLeg != null) {
      queryParams.addAll(_queryParams('', 'withLeg', withLeg));
    }
    if (withCancelled != null) {
      queryParams.addAll(_queryParams('', 'withCancelled', withCancelled));
    }
    if (withCodeshared != null) {
      queryParams.addAll(_queryParams('', 'withCodeshared', withCodeshared));
    }
    if (withCargo != null) {
      queryParams.addAll(_queryParams('', 'withCargo', withCargo));
    }
    if (withPrivate != null) {
      queryParams.addAll(_queryParams('', 'withPrivate', withPrivate));
    }
    if (withLocation != null) {
      queryParams.addAll(_queryParams('', 'withLocation', withLocation));
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

  /// FIDS (airport departures and arrivals) - by relative time / by current time [TIER 2]
  ///
  /// **What are current departures or arrivals at the airport?** or **What is the flight schedule at the airport?** or **What is flight history at the airport?**    Flights may contain live updates with corresponding information related to the actual progress of the flight   (including actual/estimated arrival/departure times). In this case this endpoint serves as a FIDS endpoint.   Presense of live updates is subject to data coverage: not all airports have this coverage in our system.    Otherwise flight information will be limited to scheduled only and will not be updated real-time. Much more airports  have this type of coverage. To check if airport is tracked and on which level, use *_/health/services/airports/{icao}/feeds* endpoint.   You can also use *_/health/services/feeds/{service}/airports* to get the list of supported airports for this  or that layer of coverage. To learn more about the data coverage, refer to *https://www.aerodatabox.com/data-coverage*.    *Returns*: the list of arriving and/or departing flights scheduled and/or planned and/or commenced within a time range specified   relatively to the current local time at the airport.
  ///
  /// Parameters:
  ///
  /// * [AirportCodesByEnum] codeType (required):
  ///   Type of code to search airport by (`iata` or `icao`)
  ///
  /// * [String] code (required):
  ///   If `codeType` is:  * `icao`, then this field must be a 4-character ICAO-code of the airport (e.g.: EHAM, KLAX, UUEE, etc.);  * `iata`, then this field must be a 3-character IATA-code of the airport (e.g.: AMS, SFO, LAX, etc.).    Full, stripped and any case formats are acceptable.
  ///
  /// * [int] offsetMinutes:
  ///   Beginning of the search range expressed in minutes relative to the current time at the airport (default: `-120`)
  ///
  /// * [int] durationMinutes:
  ///   Length (duration) of the search range expressed in minutes (default: `720`)
  ///
  /// * [FlightDirection] direction:
  ///   Direction of flights: Arrival, Departure or Both (default)
  ///
  /// * [bool] withLeg:
  ///   If set to true, the result will include movement information from airport opposite in this flight leg (airport of origin for arriving flight or airport of destination for departing flight).  In this case, Movement property will be replaced with Departure and Arrival properties for each flight.  Default: false.
  ///
  /// * [bool] withCancelled:
  ///   If set to true, result will include cancelled, divered, likely cancelled (CanceledUncertain) flights.  Default: true.
  ///
  /// * [bool] withCodeshared:
  ///   If set to true, the result will include flights with all code-shared statuses.  Otherwise, code-sharing flights will be exclued. For airports, where no information about code-share statuses  of flights are supplied (all flights are CodeshareStatus=Unknown), complex filtering will be applied   to determine which flights are likely to be operational (caution: false results are possible).
  ///
  /// * [bool] withCargo:
  ///   If set to true, the result will include cargo flights (subject to availability).
  ///
  /// * [bool] withPrivate:
  ///   If set to true, the result will include private flights (subject to availability).
  ///
  /// * [bool] withLocation:
  ///   If set to true, each currently active flight within the result will be populated   with its present real-time location, altitude, speed and track (subject to availability).
  Future<AirportFidsContract?> getAirportFlightsRelative(
    AirportCodesByEnum codeType,
    String code, {
    int? offsetMinutes,
    int? durationMinutes,
    FlightDirection? direction,
    bool? withLeg,
    bool? withCancelled,
    bool? withCodeshared,
    bool? withCargo,
    bool? withPrivate,
    bool? withLocation,
  }) async {
    final response = await getAirportFlightsRelativeWithHttpInfo(
      codeType,
      code,
      offsetMinutes: offsetMinutes,
      durationMinutes: durationMinutes,
      direction: direction,
      withLeg: withLeg,
      withCancelled: withCancelled,
      withCodeshared: withCodeshared,
      withCargo: withCargo,
      withPrivate: withPrivate,
      withLocation: withLocation,
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
        'AirportFidsContract',
      ) as AirportFidsContract;
    }
    return null;
  }

  /// Flight status [TIER 2]
  ///
  /// **What is the flight status?** or **What is the flight schedule?**    Returns live flight status (if the flight is within the coverage and not in distant future),   or flight schedule data otherwise.    If `dateLocal` is specified, gets information about flight(s) departing or arriving on the day specified (local time).  Otherwise, gets information about the status of flight(s) operating on the date of the nearest flight   (either in past or in future).    Flight can be searched by:  * flight number it's being operated under; or  * ATC-callsign it's being operated under; or  * tail-number of the aircraft it's being operated by; or  * Mode-S 24-bit ICAO Transponder address of the aircraft it's being operated by.    Flight may include airport of arrival and departure, scheduled and actual times, flight status, type of aircraft,   tail-number and aircraft image.    Some flights may have partial information only. Information may be absent for either arrival   or departure airport or can be without live updates of time and status.   Check quality markers inside the response for more information.    Normally, information with live status updates and estimated/actual arrival/departure times is only available   for airports tracked live or with ADS-B by our system. Otherwise flight information will be with scheduled info only   or absent.     To check if an airport is tracked and on which level,   use `/health/services/airports/{icao}/feeds` endpoint. You can also use `/health/services/feeds/{service}/airports` to get   the list of covered airports.     Read more about coverage and flight data limits here: https://www.aerodatabox.com/data-coverage.    Aircraft images are being searched in external sources by certain criteria without any manual intervention.   Therefore, false matches may be returned. Only images with licenses approved for commercial use are returned.   Please be advised that you may be required to mention author attribution before using the image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FlightSearchByEnum] searchBy (required):
  ///   Criteria to search flight by
  ///
  /// * [String] searchParam (required):
  ///   Value of the search criteria. If `searchBy` is:   * `number`, then this field shoud be Flight number (with or without spaces, IATA or ICAO, any case formats are acceptable, e.g. KL1395, Klm 1395)  * `callsign`, then this field should be ATC call-sign of the flight (with or without spaces, any case formats are acceptable, e.g.AFL1482, nca 008X);  * `reg`, then this field should be Aircraft tail-number (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ);  * `icao24`, then this field should be Aircraft ICAO 24-bit Mode-S address specified in hexadecimal format (e.g. 484161, 483EFD).
  ///
  /// * [DateTime] dateLocal:
  ///   Local date of departure or arrival (in format: YYYY-MM-DD, e.g.: 2019-08-29).
  ///
  /// * [bool] withAircraftImage:
  ///   Should include aircraft image (default: false).
  ///
  /// * [bool] withLocation:
  ///   Should include real-time positional data, e.g.: location, speed, altitude, etc., if available (default: false).
  Future<Response> getFlightWithHttpInfo(
    FlightSearchByEnum searchBy,
    String searchParam, {
    DateTime? dateLocal,
    bool? withAircraftImage,
    bool? withLocation,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/flights/{searchBy}/{searchParam}/{dateLocal}'
        .replaceAll('{searchBy}', searchBy.toString())
        .replaceAll('{searchParam}', searchParam)
        .replaceAll('{dateLocal}', dateLocal.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (withAircraftImage != null) {
      queryParams
          .addAll(_queryParams('', 'withAircraftImage', withAircraftImage));
    }
    if (withLocation != null) {
      queryParams.addAll(_queryParams('', 'withLocation', withLocation));
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

  /// Flight status [TIER 2]
  ///
  /// **What is the flight status?** or **What is the flight schedule?**    Returns live flight status (if the flight is within the coverage and not in distant future),   or flight schedule data otherwise.    If `dateLocal` is specified, gets information about flight(s) departing or arriving on the day specified (local time).  Otherwise, gets information about the status of flight(s) operating on the date of the nearest flight   (either in past or in future).    Flight can be searched by:  * flight number it's being operated under; or  * ATC-callsign it's being operated under; or  * tail-number of the aircraft it's being operated by; or  * Mode-S 24-bit ICAO Transponder address of the aircraft it's being operated by.    Flight may include airport of arrival and departure, scheduled and actual times, flight status, type of aircraft,   tail-number and aircraft image.    Some flights may have partial information only. Information may be absent for either arrival   or departure airport or can be without live updates of time and status.   Check quality markers inside the response for more information.    Normally, information with live status updates and estimated/actual arrival/departure times is only available   for airports tracked live or with ADS-B by our system. Otherwise flight information will be with scheduled info only   or absent.     To check if an airport is tracked and on which level,   use `/health/services/airports/{icao}/feeds` endpoint. You can also use `/health/services/feeds/{service}/airports` to get   the list of covered airports.     Read more about coverage and flight data limits here: https://www.aerodatabox.com/data-coverage.    Aircraft images are being searched in external sources by certain criteria without any manual intervention.   Therefore, false matches may be returned. Only images with licenses approved for commercial use are returned.   Please be advised that you may be required to mention author attribution before using the image.
  ///
  /// Parameters:
  ///
  /// * [FlightSearchByEnum] searchBy (required):
  ///   Criteria to search flight by
  ///
  /// * [String] searchParam (required):
  ///   Value of the search criteria. If `searchBy` is:   * `number`, then this field shoud be Flight number (with or without spaces, IATA or ICAO, any case formats are acceptable, e.g. KL1395, Klm 1395)  * `callsign`, then this field should be ATC call-sign of the flight (with or without spaces, any case formats are acceptable, e.g.AFL1482, nca 008X);  * `reg`, then this field should be Aircraft tail-number (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ);  * `icao24`, then this field should be Aircraft ICAO 24-bit Mode-S address specified in hexadecimal format (e.g. 484161, 483EFD).
  ///
  /// * [DateTime] dateLocal:
  ///   Local date of departure or arrival (in format: YYYY-MM-DD, e.g.: 2019-08-29).
  ///
  /// * [bool] withAircraftImage:
  ///   Should include aircraft image (default: false).
  ///
  /// * [bool] withLocation:
  ///   Should include real-time positional data, e.g.: location, speed, altitude, etc., if available (default: false).
  Future<List<FlightContract>?> getFlight(
    FlightSearchByEnum searchBy,
    String searchParam, {
    DateTime? dateLocal,
    bool? withAircraftImage,
    bool? withLocation,
  }) async {
    final response = await getFlightWithHttpInfo(
      searchBy,
      searchParam,
      dateLocal: dateLocal,
      withAircraftImage: withAircraftImage,
      withLocation: withLocation,
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
              responseBody, 'List<FlightContract>') as List)
          .cast<FlightContract>()
          .toList(growable: false);
    }
    return null;
  }

  /// Flight departure dates [TIER 2]
  ///
  /// **On which days the flight operates?** or **What is the flight schedule?**    Flight can be searched by:  * flight number it's being operated under; or  * ATC-callsign it's being operated under; or  * tail-number of the aircraft it's being operated by; or  * Mode-S 24-bit ICAO Transponder address of the aircraft it's being operated by.    *Returns:* Array of local departure dates in (YYYY-MM-DD) format for flights operated under speified call-sign and within the time range specified.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FlightSearchByEnum] searchBy (required):
  ///   Criteria to search flight by
  ///
  /// * [String] searchParam (required):
  ///   Value of the search criteria. If **searchBy** is:   * `number`, then this field shoud be Flight number (with or without spaces, IATA or ICAO, any case formats are acceptable, e.g. KL1395, Klm 1395)  * `callsign`, then this field should be ATC call-sign of the flight (with or without spaces, any case formats are acceptable, e.g.AFL1482, nca 008X);  * `reg`: then this field should be Aircraft tail-number (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ);  * `icao24`, then this field should be Aircraft ICAO 24-bit Mode-S address specified in hexadecimal format (e.g. 484161, 483EFD).
  ///
  /// * [DateTime] fromLocal:
  ///   Beginning of the search range (local time, format: YYYY-MM-DD)
  ///
  /// * [DateTime] toLocal:
  ///   End of the search range (local time, format: YYYY-MM-DD)
  Future<Response> getFlightDatesWithHttpInfo(
    FlightSearchByEnum searchBy,
    String searchParam, {
    DateTime? fromLocal,
    DateTime? toLocal,
  }) async {
    // ignore: prefer_const_declarations
    final path =
        r'/flights/{searchBy}/{searchParam}/dates/{fromLocal}/{toLocal}'
            .replaceAll('{searchBy}', searchBy.toString())
            .replaceAll('{searchParam}', searchParam)
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

  /// Flight departure dates [TIER 2]
  ///
  /// **On which days the flight operates?** or **What is the flight schedule?**    Flight can be searched by:  * flight number it's being operated under; or  * ATC-callsign it's being operated under; or  * tail-number of the aircraft it's being operated by; or  * Mode-S 24-bit ICAO Transponder address of the aircraft it's being operated by.    *Returns:* Array of local departure dates in (YYYY-MM-DD) format for flights operated under speified call-sign and within the time range specified.
  ///
  /// Parameters:
  ///
  /// * [FlightSearchByEnum] searchBy (required):
  ///   Criteria to search flight by
  ///
  /// * [String] searchParam (required):
  ///   Value of the search criteria. If **searchBy** is:   * `number`, then this field shoud be Flight number (with or without spaces, IATA or ICAO, any case formats are acceptable, e.g. KL1395, Klm 1395)  * `callsign`, then this field should be ATC call-sign of the flight (with or without spaces, any case formats are acceptable, e.g.AFL1482, nca 008X);  * `reg`: then this field should be Aircraft tail-number (with or without spaces or dashes, any case formats are acceptable, e.g.PH-BXO, DeMhJ);  * `icao24`, then this field should be Aircraft ICAO 24-bit Mode-S address specified in hexadecimal format (e.g. 484161, 483EFD).
  ///
  /// * [DateTime] fromLocal:
  ///   Beginning of the search range (local time, format: YYYY-MM-DD)
  ///
  /// * [DateTime] toLocal:
  ///   End of the search range (local time, format: YYYY-MM-DD)
  Future<List<String>?> getFlightDates(
    FlightSearchByEnum searchBy,
    String searchParam, {
    DateTime? fromLocal,
    DateTime? toLocal,
  }) async {
    final response = await getFlightDatesWithHttpInfo(
      searchBy,
      searchParam,
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
      return (await apiClient.deserializeAsync(responseBody, 'List<String>')
              as List)
          .cast<String>()
          .toList(growable: false);
    }
    return null;
  }
}

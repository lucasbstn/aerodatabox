//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FlightAlertAPIApi {
  FlightAlertAPIApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get web-hook subscription [FREE TIER]
  ///
  /// *This endpoitns is a part of Flight alert PUSH API currently powered by webhooks.    If you are running your own web service, you can subscribe to flights by number or airport code.   After that, your HTTP endpoint will be called (notified) whenever the flight information gets   updated.*    Gets information about an existing active web-hook subscription.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] subscriptionId (required):
  ///   Subscription ID
  Future<Response> getWebhookWithHttpInfo(
    String subscriptionId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/subscriptions/webhook/{subscriptionId}'
        .replaceAll('{subscriptionId}', subscriptionId);

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

  /// Get web-hook subscription [FREE TIER]
  ///
  /// *This endpoitns is a part of Flight alert PUSH API currently powered by webhooks.    If you are running your own web service, you can subscribe to flights by number or airport code.   After that, your HTTP endpoint will be called (notified) whenever the flight information gets   updated.*    Gets information about an existing active web-hook subscription.
  ///
  /// Parameters:
  ///
  /// * [String] subscriptionId (required):
  ///   Subscription ID
  Future<SubscriptionContract?> getWebhook(
    String subscriptionId,
  ) async {
    final response = await getWebhookWithHttpInfo(
      subscriptionId,
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
        'SubscriptionContract',
      ) as SubscriptionContract;
    }
    return null;
  }

  /// List web-hook subscriptions [FREE TIER]
  ///
  /// *This endpoitns is a part of Flight alert PUSH API currently powered by webhooks.    If you are running your own web service, you can subscribe to flights by number or airport code.   After that, your HTTP endpoint will be called (notified) whenever the flight information gets   updated.*    Get the list of existing active web-hook subscriptions
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWebhookListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/subscriptions/webhook';

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

  /// List web-hook subscriptions [FREE TIER]
  ///
  /// *This endpoitns is a part of Flight alert PUSH API currently powered by webhooks.    If you are running your own web service, you can subscribe to flights by number or airport code.   After that, your HTTP endpoint will be called (notified) whenever the flight information gets   updated.*    Get the list of existing active web-hook subscriptions
  Future<List<SubscriptionContract>?> getWebhookList() async {
    final response = await getWebhookListWithHttpInfo();
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
              responseBody, 'List<SubscriptionContract>') as List)
          .cast<SubscriptionContract>()
          .toList(growable: false);
    }
    return null;
  }

  /// Refresh web-hook subscription [TIER 4]
  ///
  /// *This endpoitns is a part of Flight alert PUSH API currently powered by webhooks.    If you are running your own web service, you can subscribe to flights by number or airport code.   After that, your HTTP endpoint will be called (notified) whenever the flight information gets   updated.*    Refreshes an existing web-hook subscription    If the subscription had an expiration date-time set when created, this endpoint   will extend it by the same period of time as the one it was originally created with.   E.g., if subscription was originally created for 7 days, this endpoint will  add extra 7 days to the expiration date-time. Note, that web-hook subscriptions  cannot be extended beyond the sliding window of 60 days from the current date-time.     If the subscription had no expiration date-time set, nothing occurs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] subscriptionId (required):
  ///   Subscription ID
  Future<Response> refreshWebhookWithHttpInfo(
    String subscriptionId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/subscriptions/webhook/{subscriptionId}/refresh'
        .replaceAll('{subscriptionId}', subscriptionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Refresh web-hook subscription [TIER 4]
  ///
  /// *This endpoitns is a part of Flight alert PUSH API currently powered by webhooks.    If you are running your own web service, you can subscribe to flights by number or airport code.   After that, your HTTP endpoint will be called (notified) whenever the flight information gets   updated.*    Refreshes an existing web-hook subscription    If the subscription had an expiration date-time set when created, this endpoint   will extend it by the same period of time as the one it was originally created with.   E.g., if subscription was originally created for 7 days, this endpoint will  add extra 7 days to the expiration date-time. Note, that web-hook subscriptions  cannot be extended beyond the sliding window of 60 days from the current date-time.     If the subscription had no expiration date-time set, nothing occurs.
  ///
  /// Parameters:
  ///
  /// * [String] subscriptionId (required):
  ///   Subscription ID
  Future<SubscriptionContract?> refreshWebhook(
    String subscriptionId,
  ) async {
    final response = await refreshWebhookWithHttpInfo(
      subscriptionId,
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
        'SubscriptionContract',
      ) as SubscriptionContract;
    }
    return null;
  }

  /// Create web-hook subscription [TIER 4]
  ///
  /// *This endpoitns is a part of Flight alert PUSH API currently powered by webhooks.    If you are running your own web service, you can subscribe to flights by number or airport code.   After that, your HTTP endpoint will be called (notified) whenever the flight information gets   updated.*    Creates a web-hook subscription on a subject (e.g., flight alerts by number or by airport code).  Returns information about created subscription. Subscription ID contained in it  can be used to refresh or remove it.    If subscription contains an expiration date-time, it will auto-expire automatically  on this time. If you want to prevent expiration, use `webhook/{subscriptionId}/refresh`   endpoint to refresh the subscription.    Every time a subject gets updated, a HTTP request will be sent to  the URL specified in `url` parameter. Request will be of a POST type   and contain JSON-formatted `FlightNotificationContract` object containing subscription  and flights information in  the body (see example response for status code 199  of this endpoint documentation).    All flight alerts / notifications are delivered in best-effort manner. They might be missing  or delayed. If there was an error delivering a notification for any reason,  there will be 2 more retries after 5 and 15 minutes (precise numbers might change).    If subscribed to a specific flight or to flights operated in a specific airport:  * Ensure that the flight is within the live updates / ADS-B data coverage. There is no sense in subscribing to a flight which operates in airports having poor or  no live updates or ADS-B coverage: there simply will be no updates. To check if an airport is tracked and on which level, use `/health/services/airports/{icao}/feeds` endpoint. You can also use `/health/services/feeds/{service}/airports` to get the list of covered airports. Read more about coverage here: https://www.aerodatabox.com/data-coverage.  * Notifications will cover updates for flights commencing from 6 hours ago up to 72 hours in future.  * Among these, notifications will contain only those flight items which were actually updated this time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SubscriptionSubjectType] subjectType (required):
  ///   Subject type
  ///
  /// * [String] subjectId (required):
  ///   Subject ID. If `subjectType` is:   * `FlightByNumber`, then this field must be a flight number (with or without spaces, IATA or ICAO, any case formats are acceptable, e.g. KL1395, Klm 1395);  * `FlightByAirportIcao`, then this field must be a 4-character ICAO-code of the airport where flights are operated (e.g.: EHAM, KLAX, UUEE, etc.);
  ///
  /// * [CreateWebHookSubscription] createWebHookSubscription:
  ///   Command containing parameters for web-hook subscription creation
  Future<Response> subscribeWebhookWithHttpInfo(
    SubscriptionSubjectType subjectType,
    String subjectId, {
    CreateWebHookSubscription? createWebHookSubscription,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/subscriptions/webhook/{subjectType}/{subjectId}'
        .replaceAll('{subjectType}', subjectType.toString())
        .replaceAll('{subjectId}', subjectId);

    // ignore: prefer_final_locals
    Object? postBody = createWebHookSubscription;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

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

  /// Create web-hook subscription [TIER 4]
  ///
  /// *This endpoitns is a part of Flight alert PUSH API currently powered by webhooks.    If you are running your own web service, you can subscribe to flights by number or airport code.   After that, your HTTP endpoint will be called (notified) whenever the flight information gets   updated.*    Creates a web-hook subscription on a subject (e.g., flight alerts by number or by airport code).  Returns information about created subscription. Subscription ID contained in it  can be used to refresh or remove it.    If subscription contains an expiration date-time, it will auto-expire automatically  on this time. If you want to prevent expiration, use `webhook/{subscriptionId}/refresh`   endpoint to refresh the subscription.    Every time a subject gets updated, a HTTP request will be sent to  the URL specified in `url` parameter. Request will be of a POST type   and contain JSON-formatted `FlightNotificationContract` object containing subscription  and flights information in  the body (see example response for status code 199  of this endpoint documentation).    All flight alerts / notifications are delivered in best-effort manner. They might be missing  or delayed. If there was an error delivering a notification for any reason,  there will be 2 more retries after 5 and 15 minutes (precise numbers might change).    If subscribed to a specific flight or to flights operated in a specific airport:  * Ensure that the flight is within the live updates / ADS-B data coverage. There is no sense in subscribing to a flight which operates in airports having poor or  no live updates or ADS-B coverage: there simply will be no updates. To check if an airport is tracked and on which level, use `/health/services/airports/{icao}/feeds` endpoint. You can also use `/health/services/feeds/{service}/airports` to get the list of covered airports. Read more about coverage here: https://www.aerodatabox.com/data-coverage.  * Notifications will cover updates for flights commencing from 6 hours ago up to 72 hours in future.  * Among these, notifications will contain only those flight items which were actually updated this time.
  ///
  /// Parameters:
  ///
  /// * [SubscriptionSubjectType] subjectType (required):
  ///   Subject type
  ///
  /// * [String] subjectId (required):
  ///   Subject ID. If `subjectType` is:   * `FlightByNumber`, then this field must be a flight number (with or without spaces, IATA or ICAO, any case formats are acceptable, e.g. KL1395, Klm 1395);  * `FlightByAirportIcao`, then this field must be a 4-character ICAO-code of the airport where flights are operated (e.g.: EHAM, KLAX, UUEE, etc.);
  ///
  /// * [CreateWebHookSubscription] createWebHookSubscription:
  ///   Command containing parameters for web-hook subscription creation
  Future<SubscriptionContract?> subscribeWebhook(
    SubscriptionSubjectType subjectType,
    String subjectId, {
    CreateWebHookSubscription? createWebHookSubscription,
  }) async {
    final response = await subscribeWebhookWithHttpInfo(
      subjectType,
      subjectId,
      createWebHookSubscription: createWebHookSubscription,
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
        'SubscriptionContract',
      ) as SubscriptionContract;
    }
    return null;
  }

  /// Remove web-hook subscription [FREE TIER]
  ///
  /// *This endpoitns is a part of Flight alert PUSH API currently powered by webhooks.    If you are running your own web service, you can subscribe to flights by number or airport code.   After that, your HTTP endpoint will be called (notified) whenever the flight information gets   updated.*    Removes the subscription
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] subscriptionId (required):
  ///   Subscription ID
  Future<Response> unsubscribeWebhookWithHttpInfo(
    String subscriptionId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/subscriptions/webhook/{subscriptionId}'
        .replaceAll('{subscriptionId}', subscriptionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Remove web-hook subscription [FREE TIER]
  ///
  /// *This endpoitns is a part of Flight alert PUSH API currently powered by webhooks.    If you are running your own web service, you can subscribe to flights by number or airport code.   After that, your HTTP endpoint will be called (notified) whenever the flight information gets   updated.*    Removes the subscription
  ///
  /// Parameters:
  ///
  /// * [String] subscriptionId (required):
  ///   Subscription ID
  Future<void> unsubscribeWebhook(
    String subscriptionId,
  ) async {
    final response = await unsubscribeWebhookWithHttpInfo(
      subscriptionId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}

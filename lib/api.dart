//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/aircraft_api_api.dart';
part 'api/airport_api_api.dart';
part 'api/flight_api_api.dart';
part 'api/flight_alert_api_api.dart';
part 'api/healthcheck_api_api.dart';
part 'api/miscellaneous_api_api.dart';
part 'api/statistical_api_api.dart';

part 'model/aircraft_contract.dart';
part 'model/aircraft_contract_image.dart';
part 'model/aircraft_contract_paged_collection_contract.dart';
part 'model/aircraft_recognition_result_contract.dart';
part 'model/aircraft_registration_contract.dart';
part 'model/aircraft_search_by_enum.dart';
part 'model/airport_codes_by_enum.dart';
part 'model/airport_continent_contract.dart';
part 'model/airport_contract.dart';
part 'model/airport_contract_current_time.dart';
part 'model/airport_contract_urls.dart';
part 'model/airport_country_contract.dart';
part 'model/airport_delay_contract.dart';
part 'model/airport_distance_time_contract.dart';
part 'model/airport_feed_service_status_contract.dart';
part 'model/airport_fids_contract.dart';
part 'model/airport_flight_contract.dart';
part 'model/airport_flight_contract_aircraft.dart';
part 'model/airport_flight_contract_airline.dart';
part 'model/airport_flight_contract_arrival.dart';
part 'model/airport_flight_contract_departure.dart';
part 'model/airport_flight_contract_location.dart';
part 'model/airport_flight_contract_movement.dart';
part 'model/airport_local_time_contract.dart';
part 'model/angle.dart';
part 'model/azimuth.dart';
part 'model/cloud_cover.dart';
part 'model/codeshare_status.dart';
part 'model/create_web_hook_subscription.dart';
part 'model/daily_route_stat_contract.dart';
part 'model/daily_route_stat_record_contract.dart';
part 'model/date_time_contract.dart';
part 'model/day_time.dart';
part 'model/delay_bracket_contract.dart';
part 'model/distance.dart';
part 'model/engine_type.dart';
part 'model/error_contract.dart';
part 'model/feed_service_enum.dart';
part 'model/feed_service_status.dart';
part 'model/feed_service_status_contract.dart';
part 'model/flight_aircraft_contract.dart';
part 'model/flight_aircraft_contract_image.dart';
part 'model/flight_airline_contract.dart';
part 'model/flight_airport_movement_contract.dart';
part 'model/flight_airport_movement_contract_revised_time.dart';
part 'model/flight_airport_movement_contract_runway_time.dart';
part 'model/flight_airport_movement_contract_scheduled_time.dart';
part 'model/flight_airport_movement_quality_enum.dart';
part 'model/flight_batch_delay_contract.dart';
part 'model/flight_contract.dart';
part 'model/flight_contract_great_circle_distance.dart';
part 'model/flight_data_general_availability_contract.dart';
part 'model/flight_delay_contract.dart';
part 'model/flight_direction.dart';
part 'model/flight_leg_delay_contract.dart';
part 'model/flight_location_contract.dart';
part 'model/flight_notification_contract.dart';
part 'model/flight_notification_contract_subscription.dart';
part 'model/flight_search_by_enum.dart';
part 'model/flight_status.dart';
part 'model/geo_coordinates_contract.dart';
part 'model/geo_coordinates_contract_listing_airport_contract_search_result_collection_contract.dart';
part 'model/license_type.dart';
part 'model/listing_airport_contract.dart';
part 'model/listing_airport_contract_location.dart';
part 'model/model_flight_time_enum.dart';
part 'model/percentile_bracket_contract.dart';
part 'model/phenomena_group.dart';
part 'model/pressure.dart';
part 'model/resource_contract.dart';
part 'model/runway_contract.dart';
part 'model/runway_contract_displaced_threshold.dart';
part 'model/runway_contract_length.dart';
part 'model/runway_contract_location.dart';
part 'model/runway_contract_width.dart';
part 'model/solar_state_contract.dart';
part 'model/solar_state_contract_dawn_astronomical.dart';
part 'model/solar_state_contract_dawn_civil.dart';
part 'model/solar_state_contract_dawn_nautical.dart';
part 'model/solar_state_contract_dusk_astronomical.dart';
part 'model/solar_state_contract_dusk_civil.dart';
part 'model/solar_state_contract_dusk_nautical.dart';
part 'model/solar_state_contract_noon_true.dart';
part 'model/solar_state_contract_sunrise.dart';
part 'model/solar_state_contract_sunset.dart';
part 'model/speed.dart';
part 'model/statistic_class.dart';
part 'model/string_collection_contract.dart';
part 'model/string_listing_airport_contract_search_result_collection_contract.dart';
part 'model/subscriber_contract.dart';
part 'model/subscription_contract.dart';
part 'model/subscription_subject_contract.dart';
part 'model/subscription_subject_type.dart';
part 'model/surface_type.dart';
part 'model/temperature.dart';
part 'model/weather_state_contract.dart';
part 'model/weather_state_contract_air_temperature.dart';
part 'model/weather_state_contract_cloud_base.dart';
part 'model/weather_state_contract_dew_point.dart';
part 'model/weather_state_contract_pressure.dart';
part 'model/weather_state_contract_visibility.dart';
part 'model/weather_state_contract_wind.dart';
part 'model/wind_contract.dart';
part 'model/wind_contract_gusts.dart';

/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) =>
    pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';

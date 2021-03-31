//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'handle_api_errors.dart';
part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/accounts_api.dart';
part 'api/questions_api.dart';
part 'api/results_api.dart';

part 'model/ripple_ocean_services_features_accounts_change_password_request.dart';
part 'model/ripple_ocean_services_features_accounts_forgot_password_request.dart';
part 'model/ripple_ocean_services_features_accounts_forgot_password_response.dart';
part 'model/ripple_ocean_services_features_accounts_login_request.dart';
part 'model/ripple_ocean_services_features_accounts_login_response.dart';
part 'model/ripple_ocean_services_features_accounts_register_request.dart';
part 'model/ripple_ocean_services_features_accounts_register_response.dart';
part 'model/ripple_ocean_services_features_accounts_reset_password_request.dart';
part 'model/ripple_ocean_services_features_accounts_reset_password_response.dart';
part 'model/ripple_ocean_services_features_questions_answer_request.dart';
part 'model/ripple_ocean_services_features_questions_answer_response.dart';
part 'model/ripple_ocean_services_features_questions_multiple_answers_request.dart';
part 'model/ripple_ocean_services_features_questions_multiple_answers_response.dart';
part 'model/ripple_ocean_services_features_results_complete_request.dart';
part 'model/ripple_ocean_services_features_results_complete_request_answer.dart';
part 'model/ripple_ocean_services_features_results_complete_response.dart';
part 'model/ripple_ocean_services_features_results_get_response.dart';
part 'model/ripple_ocean_services_features_results_get_response_item.dart';
part 'model/ripple_ocean_services_features_results_list_response.dart';
part 'model/ripple_ocean_services_features_results_list_response_item.dart';
part 'model/ripple_ocean_services_features_results_start_response.dart';
part 'model/ripple_ocean_services_features_results_start_response_question.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();

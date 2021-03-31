//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ResultsApi {
  ResultsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/Results/CompleteQuestionnaire' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RippleOceanServicesFeaturesResultsCompleteRequest] rippleOceanServicesFeaturesResultsCompleteRequest:
  Future<Response> apiResultsCompleteQuestionnairePostWithHttpInfo({ RippleOceanServicesFeaturesResultsCompleteRequest rippleOceanServicesFeaturesResultsCompleteRequest }) async {
    // Verify required params are set.

    final path = r'/api/Results/CompleteQuestionnaire';

    Object postBody = rippleOceanServicesFeaturesResultsCompleteRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json', 'text/json', 'application/_*+json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [RippleOceanServicesFeaturesResultsCompleteRequest] rippleOceanServicesFeaturesResultsCompleteRequest:
  Future<RippleOceanServicesFeaturesResultsCompleteResponse> apiResultsCompleteQuestionnairePost({ RippleOceanServicesFeaturesResultsCompleteRequest rippleOceanServicesFeaturesResultsCompleteRequest }) async {
    final response = await apiResultsCompleteQuestionnairePostWithHttpInfo( rippleOceanServicesFeaturesResultsCompleteRequest: rippleOceanServicesFeaturesResultsCompleteRequest );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {

      return RippleOceanServicesFeaturesResultsCompleteResponse.fromJson(json.decode(response.body));
    }
    return Future<RippleOceanServicesFeaturesResultsCompleteResponse>.value(null);
  }

  /// Performs an HTTP 'GET /api/Results/GetResult' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] resultId:
  Future<Response> apiResultsGetResultGetWithHttpInfo({ String resultId }) async {
    // Verify required params are set.

    final path = r'/api/Results/GetResult';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (resultId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'ResultId', resultId));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [String] resultId:
  Future<RippleOceanServicesFeaturesResultsGetResponse> apiResultsGetResultGet({ String resultId }) async {
    final response = await apiResultsGetResultGetWithHttpInfo( resultId: resultId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {

      return RippleOceanServicesFeaturesResultsGetResponse.fromJson(json.decode(response.body));
    }
    return Future<RippleOceanServicesFeaturesResultsGetResponse>.value(null);
  }

  /// Performs an HTTP 'GET /api/Results/List' operation and returns the [Response].
  Future<Response> apiResultsListGetWithHttpInfo() async {
    final path = r'/api/Results/List';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  Future<RippleOceanServicesFeaturesResultsListResponse> apiResultsListGet() async {
    final response = await apiResultsListGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {

      return RippleOceanServicesFeaturesResultsListResponse.fromJson(json.decode(response.body));
    }
    return Future<RippleOceanServicesFeaturesResultsListResponse>.value(null);
  }

  /// Performs an HTTP 'POST /api/Results/StartQuestionnaire' operation and returns the [Response].
  Future<Response> apiResultsStartQuestionnairePostWithHttpInfo() async {
    final path = r'/api/Results/StartQuestionnaire';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  Future<RippleOceanServicesFeaturesResultsStartResponse> apiResultsStartQuestionnairePost() async {
    final response = await apiResultsStartQuestionnairePostWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {

      return RippleOceanServicesFeaturesResultsStartResponse.fromJson(json.decode(response.body));
    }
    return Future<RippleOceanServicesFeaturesResultsStartResponse>.value(null);
  }
}

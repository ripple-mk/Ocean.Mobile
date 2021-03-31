//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class QuestionsApi {
  QuestionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/Questions/Answer' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RippleOceanServicesFeaturesQuestionsAnswerRequest] rippleOceanServicesFeaturesQuestionsAnswerRequest:
  Future<Response> apiQuestionsAnswerPostWithHttpInfo({ RippleOceanServicesFeaturesQuestionsAnswerRequest rippleOceanServicesFeaturesQuestionsAnswerRequest }) async {
    // Verify required params are set.

    final path = r'/api/Questions/Answer';

    Object postBody = rippleOceanServicesFeaturesQuestionsAnswerRequest;

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
  /// * [RippleOceanServicesFeaturesQuestionsAnswerRequest] rippleOceanServicesFeaturesQuestionsAnswerRequest:
  Future<RippleOceanServicesFeaturesQuestionsAnswerResponse> apiQuestionsAnswerPost({ RippleOceanServicesFeaturesQuestionsAnswerRequest rippleOceanServicesFeaturesQuestionsAnswerRequest }) async {
    final response = await apiQuestionsAnswerPostWithHttpInfo( rippleOceanServicesFeaturesQuestionsAnswerRequest: rippleOceanServicesFeaturesQuestionsAnswerRequest );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {

      return RippleOceanServicesFeaturesQuestionsAnswerResponse.fromJson(json.decode(response.body));
    }
    return Future<RippleOceanServicesFeaturesQuestionsAnswerResponse>.value(null);
  }

  /// Performs an HTTP 'POST /api/Questions/MultipleAnswers' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest] rippleOceanServicesFeaturesQuestionsMultipleAnswersRequest:
  Future<Response> apiQuestionsMultipleAnswersPostWithHttpInfo({ RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest rippleOceanServicesFeaturesQuestionsMultipleAnswersRequest }) async {
    // Verify required params are set.

    final path = r'/api/Questions/MultipleAnswers';

    Object postBody = rippleOceanServicesFeaturesQuestionsMultipleAnswersRequest;

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
  /// * [RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest] rippleOceanServicesFeaturesQuestionsMultipleAnswersRequest:
  Future<RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse> apiQuestionsMultipleAnswersPost({ RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest rippleOceanServicesFeaturesQuestionsMultipleAnswersRequest }) async {
    final response = await apiQuestionsMultipleAnswersPostWithHttpInfo( rippleOceanServicesFeaturesQuestionsMultipleAnswersRequest: rippleOceanServicesFeaturesQuestionsMultipleAnswersRequest );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {

      return RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse.fromJson(json.decode(response.body));
    }
    return Future<RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse>.value(null);
  }
}

part of openapi.api;



class QuestionsApi {
  final ApiClient apiClient;

  QuestionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> apiQuestionsAnswerPostWithHttpInfo({ RippleOceanServicesFeaturesQuestionsAnswerRequest rippleOceanServicesFeaturesQuestionsAnswerRequest }) async {
    Object postBody = rippleOceanServicesFeaturesQuestionsAnswerRequest;

    // verify required params are set

    // create path and map variables
    String path = "/api/Questions/Answer".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json","text/json","application/_*+json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  /// 
  Future<RippleOceanServicesFeaturesQuestionsAnswerResponse> apiQuestionsAnswerPost({ RippleOceanServicesFeaturesQuestionsAnswerRequest rippleOceanServicesFeaturesQuestionsAnswerRequest }) async {
    Response response = await apiQuestionsAnswerPostWithHttpInfo( rippleOceanServicesFeaturesQuestionsAnswerRequest: rippleOceanServicesFeaturesQuestionsAnswerRequest );
    if(response.statusCode >= 400) {
      HandleApiErrors(response.statusCode, response.body); return null;
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RippleOceanServicesFeaturesQuestionsAnswerResponse') as RippleOceanServicesFeaturesQuestionsAnswerResponse;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> apiQuestionsMultipleAnswersPostWithHttpInfo({ RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest rippleOceanServicesFeaturesQuestionsMultipleAnswersRequest }) async {
    Object postBody = rippleOceanServicesFeaturesQuestionsMultipleAnswersRequest;

    // verify required params are set

    // create path and map variables
    String path = "/api/Questions/MultipleAnswers".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json","text/json","application/_*+json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  /// 
  Future<RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse> apiQuestionsMultipleAnswersPost({ RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest rippleOceanServicesFeaturesQuestionsMultipleAnswersRequest }) async {
    Response response = await apiQuestionsMultipleAnswersPostWithHttpInfo( rippleOceanServicesFeaturesQuestionsMultipleAnswersRequest: rippleOceanServicesFeaturesQuestionsMultipleAnswersRequest );
    if(response.statusCode >= 400) {
      HandleApiErrors(response.statusCode, response.body); return null;
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse') as RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse;
    } else {
      return null;
    }
  }

}

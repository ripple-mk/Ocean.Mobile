part of openapi.api;



class ResultsApi {
  final ApiClient apiClient;

  ResultsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> apiResultsCompleteQuestionnairePostWithHttpInfo({ RippleOceanServicesFeaturesResultsCompleteRequest rippleOceanServicesFeaturesResultsCompleteRequest }) async {
    Object postBody = rippleOceanServicesFeaturesResultsCompleteRequest;

    // verify required params are set

    // create path and map variables
    String path = "/api/Results/CompleteQuestionnaire".replaceAll("{format}","json");

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
  Future<RippleOceanServicesFeaturesResultsCompleteResponse> apiResultsCompleteQuestionnairePost({ RippleOceanServicesFeaturesResultsCompleteRequest rippleOceanServicesFeaturesResultsCompleteRequest }) async {
    Response response = await apiResultsCompleteQuestionnairePostWithHttpInfo( rippleOceanServicesFeaturesResultsCompleteRequest: rippleOceanServicesFeaturesResultsCompleteRequest );
    if(response.statusCode >= 400) {
      HandleApiErrors(response.statusCode, response.body); return null;
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RippleOceanServicesFeaturesResultsCompleteResponse') as RippleOceanServicesFeaturesResultsCompleteResponse;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> apiResultsContinueQuestionnaireGetWithHttpInfo({ String resultId }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/Results/ContinueQuestionnaire".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(resultId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ResultId", resultId));
    }

    List<String> contentTypes = [];

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
                                             'GET',
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
  Future<RippleOceanServicesFeaturesResultsContinueResponse> apiResultsContinueQuestionnaireGet({ String resultId }) async {
    Response response = await apiResultsContinueQuestionnaireGetWithHttpInfo( resultId: resultId );
    if(response.statusCode >= 400) {
      HandleApiErrors(response.statusCode, response.body); return null;
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RippleOceanServicesFeaturesResultsContinueResponse') as RippleOceanServicesFeaturesResultsContinueResponse;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> apiResultsGetResultGetWithHttpInfo({ String resultId }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/Results/GetResult".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(resultId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ResultId", resultId));
    }

    List<String> contentTypes = [];

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
                                             'GET',
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
  Future<RippleOceanServicesFeaturesResultsGetResponse> apiResultsGetResultGet({ String resultId }) async {
    Response response = await apiResultsGetResultGetWithHttpInfo( resultId: resultId );
    if(response.statusCode >= 400) {
      HandleApiErrors(response.statusCode, response.body); return null;
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RippleOceanServicesFeaturesResultsGetResponse') as RippleOceanServicesFeaturesResultsGetResponse;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> apiResultsStartQuestionnairePostWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/Results/StartQuestionnaire".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

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
  Future<RippleOceanServicesFeaturesResultsStartResponse> apiResultsStartQuestionnairePost() async {
    Response response = await apiResultsStartQuestionnairePostWithHttpInfo();
    if(response.statusCode >= 400) {
      HandleApiErrors(response.statusCode, response.body); return null;
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RippleOceanServicesFeaturesResultsStartResponse') as RippleOceanServicesFeaturesResultsStartResponse;
    } else {
      return null;
    }
  }

}

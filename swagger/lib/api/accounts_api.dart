part of openapi.api;



class AccountsApi {
  final ApiClient apiClient;

  AccountsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> apiAccountsChangePasswordPostWithHttpInfo({ RippleOceanServicesFeaturesAccountsChangePasswordRequest rippleOceanServicesFeaturesAccountsChangePasswordRequest }) async {
    Object postBody = rippleOceanServicesFeaturesAccountsChangePasswordRequest;

    // verify required params are set

    // create path and map variables
    String path = "/api/Accounts/ChangePassword".replaceAll("{format}","json");

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
  Future<Object> apiAccountsChangePasswordPost({ RippleOceanServicesFeaturesAccountsChangePasswordRequest rippleOceanServicesFeaturesAccountsChangePasswordRequest }) async {
    Response response = await apiAccountsChangePasswordPostWithHttpInfo( rippleOceanServicesFeaturesAccountsChangePasswordRequest: rippleOceanServicesFeaturesAccountsChangePasswordRequest );
    if(response.statusCode >= 400) {
      HandleApiErrors(response.statusCode, response.body); return null;
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> apiAccountsForgotPasswordPostWithHttpInfo({ RippleOceanServicesFeaturesAccountsForgotPasswordRequest rippleOceanServicesFeaturesAccountsForgotPasswordRequest }) async {
    Object postBody = rippleOceanServicesFeaturesAccountsForgotPasswordRequest;

    // verify required params are set

    // create path and map variables
    String path = "/api/Accounts/ForgotPassword".replaceAll("{format}","json");

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
  Future<RippleOceanServicesFeaturesAccountsForgotPasswordResponse> apiAccountsForgotPasswordPost({ RippleOceanServicesFeaturesAccountsForgotPasswordRequest rippleOceanServicesFeaturesAccountsForgotPasswordRequest }) async {
    Response response = await apiAccountsForgotPasswordPostWithHttpInfo( rippleOceanServicesFeaturesAccountsForgotPasswordRequest: rippleOceanServicesFeaturesAccountsForgotPasswordRequest );
    if(response.statusCode >= 400) {
      HandleApiErrors(response.statusCode, response.body); return null;
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RippleOceanServicesFeaturesAccountsForgotPasswordResponse') as RippleOceanServicesFeaturesAccountsForgotPasswordResponse;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> apiAccountsLoginPostWithHttpInfo({ RippleOceanServicesFeaturesAccountsLoginRequest rippleOceanServicesFeaturesAccountsLoginRequest }) async {
    Object postBody = rippleOceanServicesFeaturesAccountsLoginRequest;

    // verify required params are set

    // create path and map variables
    String path = "/api/Accounts/Login".replaceAll("{format}","json");

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
  Future<RippleOceanServicesFeaturesAccountsLoginResponse> apiAccountsLoginPost({ RippleOceanServicesFeaturesAccountsLoginRequest rippleOceanServicesFeaturesAccountsLoginRequest }) async {
    Response response = await apiAccountsLoginPostWithHttpInfo( rippleOceanServicesFeaturesAccountsLoginRequest: rippleOceanServicesFeaturesAccountsLoginRequest );
    if(response.statusCode >= 400) {
      HandleApiErrors(response.statusCode, response.body); return null;
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RippleOceanServicesFeaturesAccountsLoginResponse') as RippleOceanServicesFeaturesAccountsLoginResponse;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> apiAccountsRegisterPostWithHttpInfo({ RippleOceanServicesFeaturesAccountsRegisterRequest rippleOceanServicesFeaturesAccountsRegisterRequest }) async {
    Object postBody = rippleOceanServicesFeaturesAccountsRegisterRequest;

    // verify required params are set

    // create path and map variables
    String path = "/api/Accounts/Register".replaceAll("{format}","json");

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
  Future<RippleOceanServicesFeaturesAccountsRegisterResponse> apiAccountsRegisterPost({ RippleOceanServicesFeaturesAccountsRegisterRequest rippleOceanServicesFeaturesAccountsRegisterRequest }) async {
    Response response = await apiAccountsRegisterPostWithHttpInfo( rippleOceanServicesFeaturesAccountsRegisterRequest: rippleOceanServicesFeaturesAccountsRegisterRequest );
    if(response.statusCode >= 400) {
      HandleApiErrors(response.statusCode, response.body); return null;
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RippleOceanServicesFeaturesAccountsRegisterResponse') as RippleOceanServicesFeaturesAccountsRegisterResponse;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> apiAccountsResetPasswordPostWithHttpInfo({ RippleOceanServicesFeaturesAccountsResetPasswordRequest rippleOceanServicesFeaturesAccountsResetPasswordRequest }) async {
    Object postBody = rippleOceanServicesFeaturesAccountsResetPasswordRequest;

    // verify required params are set

    // create path and map variables
    String path = "/api/Accounts/ResetPassword".replaceAll("{format}","json");

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
  Future<RippleOceanServicesFeaturesAccountsResetPasswordResponse> apiAccountsResetPasswordPost({ RippleOceanServicesFeaturesAccountsResetPasswordRequest rippleOceanServicesFeaturesAccountsResetPasswordRequest }) async {
    Response response = await apiAccountsResetPasswordPostWithHttpInfo( rippleOceanServicesFeaturesAccountsResetPasswordRequest: rippleOceanServicesFeaturesAccountsResetPasswordRequest );
    if(response.statusCode >= 400) {
      HandleApiErrors(response.statusCode, response.body); return null;
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RippleOceanServicesFeaturesAccountsResetPasswordResponse') as RippleOceanServicesFeaturesAccountsResetPasswordResponse;
    } else {
      return null;
    }
  }

}

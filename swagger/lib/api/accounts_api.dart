//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AccountsApi {
  AccountsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/Accounts/ChangePassword' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RippleOceanServicesFeaturesAccountsChangePasswordRequest] rippleOceanServicesFeaturesAccountsChangePasswordRequest:
  Future<Response> apiAccountsChangePasswordPostWithHttpInfo({ RippleOceanServicesFeaturesAccountsChangePasswordRequest rippleOceanServicesFeaturesAccountsChangePasswordRequest }) async {
    // Verify required params are set.

    final path = r'/api/Accounts/ChangePassword';

    Object postBody = rippleOceanServicesFeaturesAccountsChangePasswordRequest;

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
  /// * [RippleOceanServicesFeaturesAccountsChangePasswordRequest] rippleOceanServicesFeaturesAccountsChangePasswordRequest:
  Future<Object> apiAccountsChangePasswordPost({ RippleOceanServicesFeaturesAccountsChangePasswordRequest rippleOceanServicesFeaturesAccountsChangePasswordRequest }) async {
    final response = await apiAccountsChangePasswordPostWithHttpInfo( rippleOceanServicesFeaturesAccountsChangePasswordRequest: rippleOceanServicesFeaturesAccountsChangePasswordRequest );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {

      return Object.fromJson(json.decode(response.body));
    }
    return Future<Object>.value(null);
  }

  /// Performs an HTTP 'POST /api/Accounts/ForgotPassword' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RippleOceanServicesFeaturesAccountsForgotPasswordRequest] rippleOceanServicesFeaturesAccountsForgotPasswordRequest:
  Future<Response> apiAccountsForgotPasswordPostWithHttpInfo({ RippleOceanServicesFeaturesAccountsForgotPasswordRequest rippleOceanServicesFeaturesAccountsForgotPasswordRequest }) async {
    // Verify required params are set.

    final path = r'/api/Accounts/ForgotPassword';

    Object postBody = rippleOceanServicesFeaturesAccountsForgotPasswordRequest;

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
  /// * [RippleOceanServicesFeaturesAccountsForgotPasswordRequest] rippleOceanServicesFeaturesAccountsForgotPasswordRequest:
  Future<RippleOceanServicesFeaturesAccountsForgotPasswordResponse> apiAccountsForgotPasswordPost({ RippleOceanServicesFeaturesAccountsForgotPasswordRequest rippleOceanServicesFeaturesAccountsForgotPasswordRequest }) async {
    final response = await apiAccountsForgotPasswordPostWithHttpInfo( rippleOceanServicesFeaturesAccountsForgotPasswordRequest: rippleOceanServicesFeaturesAccountsForgotPasswordRequest );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {

      return RippleOceanServicesFeaturesAccountsForgotPasswordResponse.fromJson(json.decode(response.body));
    }
    return Future<RippleOceanServicesFeaturesAccountsForgotPasswordResponse>.value(null);
  }

  /// Performs an HTTP 'POST /api/Accounts/Login' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RippleOceanServicesFeaturesAccountsLoginRequest] rippleOceanServicesFeaturesAccountsLoginRequest:
  Future<Response> apiAccountsLoginPostWithHttpInfo({ RippleOceanServicesFeaturesAccountsLoginRequest rippleOceanServicesFeaturesAccountsLoginRequest }) async {
    // Verify required params are set.

    final path = r'/api/Accounts/Login';

    Object postBody = rippleOceanServicesFeaturesAccountsLoginRequest;

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
  /// * [RippleOceanServicesFeaturesAccountsLoginRequest] rippleOceanServicesFeaturesAccountsLoginRequest:
  Future<RippleOceanServicesFeaturesAccountsLoginResponse> apiAccountsLoginPost({ RippleOceanServicesFeaturesAccountsLoginRequest rippleOceanServicesFeaturesAccountsLoginRequest }) async {
    final response = await apiAccountsLoginPostWithHttpInfo( rippleOceanServicesFeaturesAccountsLoginRequest: rippleOceanServicesFeaturesAccountsLoginRequest );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {

      return RippleOceanServicesFeaturesAccountsLoginResponse.fromJson(json.decode(response.body));
    }
    return Future<RippleOceanServicesFeaturesAccountsLoginResponse>.value(null);
  }

  /// Performs an HTTP 'POST /api/Accounts/Register' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RippleOceanServicesFeaturesAccountsRegisterRequest] rippleOceanServicesFeaturesAccountsRegisterRequest:
  Future<Response> apiAccountsRegisterPostWithHttpInfo({ RippleOceanServicesFeaturesAccountsRegisterRequest rippleOceanServicesFeaturesAccountsRegisterRequest }) async {
    // Verify required params are set.

    final path = r'/api/Accounts/Register';

    Object postBody = rippleOceanServicesFeaturesAccountsRegisterRequest;

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
  /// * [RippleOceanServicesFeaturesAccountsRegisterRequest] rippleOceanServicesFeaturesAccountsRegisterRequest:
  Future<RippleOceanServicesFeaturesAccountsRegisterResponse> apiAccountsRegisterPost({ RippleOceanServicesFeaturesAccountsRegisterRequest rippleOceanServicesFeaturesAccountsRegisterRequest }) async {
    final response = await apiAccountsRegisterPostWithHttpInfo( rippleOceanServicesFeaturesAccountsRegisterRequest: rippleOceanServicesFeaturesAccountsRegisterRequest );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {

      return RippleOceanServicesFeaturesAccountsRegisterResponse.fromJson(json.decode(response.body));
    }
    return Future<RippleOceanServicesFeaturesAccountsRegisterResponse>.value(null);
  }

  /// Performs an HTTP 'POST /api/Accounts/ResetPassword' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RippleOceanServicesFeaturesAccountsResetPasswordRequest] rippleOceanServicesFeaturesAccountsResetPasswordRequest:
  Future<Response> apiAccountsResetPasswordPostWithHttpInfo({ RippleOceanServicesFeaturesAccountsResetPasswordRequest rippleOceanServicesFeaturesAccountsResetPasswordRequest }) async {
    // Verify required params are set.

    final path = r'/api/Accounts/ResetPassword';

    Object postBody = rippleOceanServicesFeaturesAccountsResetPasswordRequest;

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
  /// * [RippleOceanServicesFeaturesAccountsResetPasswordRequest] rippleOceanServicesFeaturesAccountsResetPasswordRequest:
  Future<RippleOceanServicesFeaturesAccountsResetPasswordResponse> apiAccountsResetPasswordPost({ RippleOceanServicesFeaturesAccountsResetPasswordRequest rippleOceanServicesFeaturesAccountsResetPasswordRequest }) async {
    final response = await apiAccountsResetPasswordPostWithHttpInfo( rippleOceanServicesFeaturesAccountsResetPasswordRequest: rippleOceanServicesFeaturesAccountsResetPasswordRequest );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {

      return RippleOceanServicesFeaturesAccountsResetPasswordResponse.fromJson(json.decode(response.body));
    }
    return Future<RippleOceanServicesFeaturesAccountsResetPasswordResponse>.value(null);
  }
}

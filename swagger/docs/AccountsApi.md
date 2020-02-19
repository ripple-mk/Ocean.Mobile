# openapi.api.AccountsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAccountsChangePasswordPost**](AccountsApi.md#apiAccountsChangePasswordPost) | **POST** /api/Accounts/ChangePassword | 
[**apiAccountsForgotPasswordPost**](AccountsApi.md#apiAccountsForgotPasswordPost) | **POST** /api/Accounts/ForgotPassword | 
[**apiAccountsLoginPost**](AccountsApi.md#apiAccountsLoginPost) | **POST** /api/Accounts/Login | 
[**apiAccountsRegisterPost**](AccountsApi.md#apiAccountsRegisterPost) | **POST** /api/Accounts/Register | 
[**apiAccountsResetPasswordPost**](AccountsApi.md#apiAccountsResetPasswordPost) | **POST** /api/Accounts/ResetPassword | 


# **apiAccountsChangePasswordPost**
> Object apiAccountsChangePasswordPost(rippleOceanServicesFeaturesAccountsChangePasswordRequest)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = AccountsApi();
var rippleOceanServicesFeaturesAccountsChangePasswordRequest = RippleOceanServicesFeaturesAccountsChangePasswordRequest(); // RippleOceanServicesFeaturesAccountsChangePasswordRequest | 

try { 
    var result = api_instance.apiAccountsChangePasswordPost(rippleOceanServicesFeaturesAccountsChangePasswordRequest);
    print(result);
} catch (e) {
    print("Exception when calling AccountsApi->apiAccountsChangePasswordPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rippleOceanServicesFeaturesAccountsChangePasswordRequest** | [**RippleOceanServicesFeaturesAccountsChangePasswordRequest**](RippleOceanServicesFeaturesAccountsChangePasswordRequest.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAccountsForgotPasswordPost**
> Object apiAccountsForgotPasswordPost(rippleOceanServicesFeaturesAccountsForgotPasswordRequest)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = AccountsApi();
var rippleOceanServicesFeaturesAccountsForgotPasswordRequest = RippleOceanServicesFeaturesAccountsForgotPasswordRequest(); // RippleOceanServicesFeaturesAccountsForgotPasswordRequest | 

try { 
    var result = api_instance.apiAccountsForgotPasswordPost(rippleOceanServicesFeaturesAccountsForgotPasswordRequest);
    print(result);
} catch (e) {
    print("Exception when calling AccountsApi->apiAccountsForgotPasswordPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rippleOceanServicesFeaturesAccountsForgotPasswordRequest** | [**RippleOceanServicesFeaturesAccountsForgotPasswordRequest**](RippleOceanServicesFeaturesAccountsForgotPasswordRequest.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAccountsLoginPost**
> RippleOceanServicesFeaturesAccountsLoginResponse apiAccountsLoginPost(rippleOceanServicesFeaturesAccountsLoginRequest)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = AccountsApi();
var rippleOceanServicesFeaturesAccountsLoginRequest = RippleOceanServicesFeaturesAccountsLoginRequest(); // RippleOceanServicesFeaturesAccountsLoginRequest | 

try { 
    var result = api_instance.apiAccountsLoginPost(rippleOceanServicesFeaturesAccountsLoginRequest);
    print(result);
} catch (e) {
    print("Exception when calling AccountsApi->apiAccountsLoginPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rippleOceanServicesFeaturesAccountsLoginRequest** | [**RippleOceanServicesFeaturesAccountsLoginRequest**](RippleOceanServicesFeaturesAccountsLoginRequest.md)|  | [optional] 

### Return type

[**RippleOceanServicesFeaturesAccountsLoginResponse**](RippleOceanServicesFeaturesAccountsLoginResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAccountsRegisterPost**
> RippleOceanServicesFeaturesAccountsRegisterResponse apiAccountsRegisterPost(rippleOceanServicesFeaturesAccountsRegisterRequest)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = AccountsApi();
var rippleOceanServicesFeaturesAccountsRegisterRequest = RippleOceanServicesFeaturesAccountsRegisterRequest(); // RippleOceanServicesFeaturesAccountsRegisterRequest | 

try { 
    var result = api_instance.apiAccountsRegisterPost(rippleOceanServicesFeaturesAccountsRegisterRequest);
    print(result);
} catch (e) {
    print("Exception when calling AccountsApi->apiAccountsRegisterPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rippleOceanServicesFeaturesAccountsRegisterRequest** | [**RippleOceanServicesFeaturesAccountsRegisterRequest**](RippleOceanServicesFeaturesAccountsRegisterRequest.md)|  | [optional] 

### Return type

[**RippleOceanServicesFeaturesAccountsRegisterResponse**](RippleOceanServicesFeaturesAccountsRegisterResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAccountsResetPasswordPost**
> Object apiAccountsResetPasswordPost(rippleOceanServicesFeaturesAccountsResetPasswordRequest)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = AccountsApi();
var rippleOceanServicesFeaturesAccountsResetPasswordRequest = RippleOceanServicesFeaturesAccountsResetPasswordRequest(); // RippleOceanServicesFeaturesAccountsResetPasswordRequest | 

try { 
    var result = api_instance.apiAccountsResetPasswordPost(rippleOceanServicesFeaturesAccountsResetPasswordRequest);
    print(result);
} catch (e) {
    print("Exception when calling AccountsApi->apiAccountsResetPasswordPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rippleOceanServicesFeaturesAccountsResetPasswordRequest** | [**RippleOceanServicesFeaturesAccountsResetPasswordRequest**](RippleOceanServicesFeaturesAccountsResetPasswordRequest.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# openapi.api.ResultsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiResultsCompleteQuestionnairePost**](ResultsApi.md#apiResultsCompleteQuestionnairePost) | **POST** /api/Results/CompleteQuestionnaire | 
[**apiResultsGetResultGet**](ResultsApi.md#apiResultsGetResultGet) | **GET** /api/Results/GetResult | 
[**apiResultsListGet**](ResultsApi.md#apiResultsListGet) | **GET** /api/Results/List | 
[**apiResultsStartQuestionnairePost**](ResultsApi.md#apiResultsStartQuestionnairePost) | **POST** /api/Results/StartQuestionnaire | 


# **apiResultsCompleteQuestionnairePost**
> RippleOceanServicesFeaturesResultsCompleteResponse apiResultsCompleteQuestionnairePost(rippleOceanServicesFeaturesResultsCompleteRequest)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = ResultsApi();
var rippleOceanServicesFeaturesResultsCompleteRequest = RippleOceanServicesFeaturesResultsCompleteRequest(); // RippleOceanServicesFeaturesResultsCompleteRequest | 

try { 
    var result = api_instance.apiResultsCompleteQuestionnairePost(rippleOceanServicesFeaturesResultsCompleteRequest);
    print(result);
} catch (e) {
    print("Exception when calling ResultsApi->apiResultsCompleteQuestionnairePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rippleOceanServicesFeaturesResultsCompleteRequest** | [**RippleOceanServicesFeaturesResultsCompleteRequest**](RippleOceanServicesFeaturesResultsCompleteRequest.md)|  | [optional] 

### Return type

[**RippleOceanServicesFeaturesResultsCompleteResponse**](RippleOceanServicesFeaturesResultsCompleteResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiResultsGetResultGet**
> RippleOceanServicesFeaturesResultsGetResponse apiResultsGetResultGet(resultId)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = ResultsApi();
var resultId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try { 
    var result = api_instance.apiResultsGetResultGet(resultId);
    print(result);
} catch (e) {
    print("Exception when calling ResultsApi->apiResultsGetResultGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resultId** | [**String**](.md)|  | [optional] [default to null]

### Return type

[**RippleOceanServicesFeaturesResultsGetResponse**](RippleOceanServicesFeaturesResultsGetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiResultsListGet**
> RippleOceanServicesFeaturesResultsListResponse apiResultsListGet()



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = ResultsApi();

try { 
    var result = api_instance.apiResultsListGet();
    print(result);
} catch (e) {
    print("Exception when calling ResultsApi->apiResultsListGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RippleOceanServicesFeaturesResultsListResponse**](RippleOceanServicesFeaturesResultsListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiResultsStartQuestionnairePost**
> RippleOceanServicesFeaturesResultsStartResponse apiResultsStartQuestionnairePost()



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = ResultsApi();

try { 
    var result = api_instance.apiResultsStartQuestionnairePost();
    print(result);
} catch (e) {
    print("Exception when calling ResultsApi->apiResultsStartQuestionnairePost: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RippleOceanServicesFeaturesResultsStartResponse**](RippleOceanServicesFeaturesResultsStartResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


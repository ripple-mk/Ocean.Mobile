# openapi.api.QuestionsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiQuestionsAnswerPost**](QuestionsApi.md#apiQuestionsAnswerPost) | **POST** /api/Questions/Answer | 
[**apiQuestionsMultipleAnswersPost**](QuestionsApi.md#apiQuestionsMultipleAnswersPost) | **POST** /api/Questions/MultipleAnswers | 


# **apiQuestionsAnswerPost**
> RippleOceanServicesFeaturesQuestionsAnswerResponse apiQuestionsAnswerPost(rippleOceanServicesFeaturesQuestionsAnswerRequest)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = QuestionsApi();
var rippleOceanServicesFeaturesQuestionsAnswerRequest = RippleOceanServicesFeaturesQuestionsAnswerRequest(); // RippleOceanServicesFeaturesQuestionsAnswerRequest | 

try { 
    var result = api_instance.apiQuestionsAnswerPost(rippleOceanServicesFeaturesQuestionsAnswerRequest);
    print(result);
} catch (e) {
    print("Exception when calling QuestionsApi->apiQuestionsAnswerPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rippleOceanServicesFeaturesQuestionsAnswerRequest** | [**RippleOceanServicesFeaturesQuestionsAnswerRequest**](RippleOceanServicesFeaturesQuestionsAnswerRequest.md)|  | [optional] 

### Return type

[**RippleOceanServicesFeaturesQuestionsAnswerResponse**](RippleOceanServicesFeaturesQuestionsAnswerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiQuestionsMultipleAnswersPost**
> RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse apiQuestionsMultipleAnswersPost(rippleOceanServicesFeaturesQuestionsMultipleAnswersRequest)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = QuestionsApi();
var rippleOceanServicesFeaturesQuestionsMultipleAnswersRequest = RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest(); // RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest | 

try { 
    var result = api_instance.apiQuestionsMultipleAnswersPost(rippleOceanServicesFeaturesQuestionsMultipleAnswersRequest);
    print(result);
} catch (e) {
    print("Exception when calling QuestionsApi->apiQuestionsMultipleAnswersPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rippleOceanServicesFeaturesQuestionsMultipleAnswersRequest** | [**RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest**](RippleOceanServicesFeaturesQuestionsMultipleAnswersRequest.md)|  | [optional] 

### Return type

[**RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse**](RippleOceanServicesFeaturesQuestionsMultipleAnswersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


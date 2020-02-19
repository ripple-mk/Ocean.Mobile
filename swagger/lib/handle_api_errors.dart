part of openapi.api;

class HandleApiErrors {
  static Function(Map<String, String>) callback;
  final int statusCode;
  final String body;
  HandleApiErrors(this.statusCode, this.body) {
    var json = jsonDecode(body);
    var errors = getErrorMessagesList(json);
    if (callback != null) callback(errors);
  }
  static List<Function(Map<String, String> errors)> formCallbacks =
      new List<Function(Map<String, String> errors)>();
  static Function(Map<String, String> errors) formCallback;

  Map<String, String> getErrorMessagesList(Map<String, Object> json) {
    var messages = Map<String, String>();
    if (json.containsKey('Errors')) {
      if (json['Errors'] is List<Object>) {
        var errors = json['Errors'] as List<dynamic>;
        for (var i = 0; i < errors.length; i++) {
          var obj = errors.elementAt(i);
          if (obj.containsKey('PropertyName')) {
            messages[obj['PropertyName'].toString()] = null;
          }
          if (obj.containsKey('ErrorMessage')) {
            messages[obj['PropertyName'].toString()] =
                obj['ErrorMessage'].toString();
          }
        }
        formCallbacks.forEach((f) => f(messages));
        if (formCallback != null) formCallback(messages);
      }
    } else if (json.containsKey('Error'))
      messages["Error"] = (json['Error'].toString());
    else
      messages["Error"] = body.toString();
    return messages;
  }
}

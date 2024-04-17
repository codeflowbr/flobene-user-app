import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class JwttokenCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
      "username": "patrick",
       "password": "1234"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'JWTTOKEN',
      apiUrl: 'https://codeflowbr.online:8888/users/authenticate',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? jwt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? login = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
    "login":"$login",
    "password":"$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'https://codeflowbr.online:8888/api/v1/login',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.role''',
      ));
  static bool? active(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.active''',
      ));
  static dynamic people(dynamic response) => getJsonField(
        response,
        r'''$.people''',
      );
  static dynamic address(dynamic response) => getJsonField(
        response,
        r'''$.people.address''',
      );
  static dynamic company(dynamic response) => getJsonField(
        response,
        r'''$.people.company''',
      );
  static dynamic wallet(dynamic response) => getJsonField(
        response,
        r'''$.wallet''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}

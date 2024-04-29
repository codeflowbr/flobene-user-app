import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
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
  static int? balanceref(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.wallet.balanceRef''',
      ));
  static int? balanceali(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.wallet.balanceAli''',
      ));
  static String? peopleName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.people.name''',
      ));
  static String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
}

class BuscarAccountIdCall {
  static Future<ApiCallResponse> call({
    String? accountId = '',
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscarAccountId',
      apiUrl: 'https://codeflowbr.online:8888/api/v1/account/$accountId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'accountId': accountId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? balanceAli(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.wallet.balanceAli''',
      ));
  static int? balanceRef(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.wallet.balanceRef''',
      ));
  static int? walletId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.wallet.id''',
      ));
  static dynamic people(dynamic response) => getJsonField(
        response,
        r'''$.people''',
      );
  static String? peopleName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.people.name''',
      ));
  static String? companyName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.people.company.fantasyName''',
      ));
}

class VendaLojistaCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? senderID,
    int? receiverId,
    String? password = '',
    double? value,
    String? type = '',
    String? date = '',
  }) async {
    final ffApiRequestBody = '''
{
  "sender": $senderID,
  "receiver": $receiverId,
  "password": "$password",
  "value": $value,
  "type": "$type",
  "date": "$date"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'vendaLojista',
      apiUrl: 'https://codeflowbr.online:8888/api/v1/exchange/inner',
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
}

class CadastroLojistaCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? senha = '',
    String? razaoSocial = '',
    String? fantasyName = '',
    String? cnpj = '',
    String? phone = '',
    String? rua = '',
    String? numero = '',
    String? bairro = '',
    String? cep = '',
    String? estado = '',
    String? cidade = '',
    String? complemento = '',
    String? chavepix = '',
    String? nomeDoDono = '',
    String? emailDoDono = '',
    String? telefoneDoDono = '',
    String? cpf = '',
    String? dataNascimento = '',
    String? transactionPassword = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$senha",
  "role": "1",
  "active": true,
  "shop": {
    "razaoSocial": "$razaoSocial",
    "fantasyName": "$fantasyName",
    "cnpj": "$cnpj",
    "phone": "$phone",
    "address": {
      "street": "$rua",
      "number": "$numero",
      "neighborhood": "$bairro",
      "complement": "$complemento",
      "city": "$cidade",
      "state": "$estado",
      "cep": "$cep"
    },
    "pixKey": "$chavepix",
    "ownerName": "$nomeDoDono",
    "ownerEmail": "$emailDoDono",
    "ownerPhone": "$telefoneDoDono",
    "ownerCPF": "$cpf",
    "ownerBirth": "$dataNascimento"
  },
  "wallet": {
    "balanceRef": 0,
    "balanceAli": 0,
    "balanceShop": 0,
    "percentage": 7,
    "transactionPassword": "$transactionPassword"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cadastroLojista',
      apiUrl: 'https://codeflowbr.online:8888/api/v1/account/new',
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
}

class CnpjCall {
  static Future<ApiCallResponse> call({
    String? cnpj = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'cnpj',
      apiUrl: 'https://receitaws.com.br/v1/cnpj/$cnpj',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cnpj': cnpj,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? fantasia(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.fantasia''',
      ));
  static String? situacao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.situacao''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nome''',
      ));
  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? municipio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.municipio''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? complemento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.complemento''',
      ));
  static String? telefone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.telefone''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static String? numeroCasa(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.numero''',
      ));
  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? cnpj(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cnpj''',
      ));
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

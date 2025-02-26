import 'dart:convert';

import 'package:flutter/foundation.dart';

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
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? id(dynamic response) => castToType<String>(getJsonField(
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
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.people.address.city''',
      ));
}

class RecoveryPasswordCall {
  static Future<ApiCallResponse> call({
    String? login = '',
  }) async {
    final ffApiRequestBody = '''
{
    "email":"$login"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'recovery password',
      apiUrl: 'https://codeflowbr.online:8888/api/v1/account/recovery',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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

class AlterarSenhaCall {
  static Future<ApiCallResponse> call({
    String? login = '',
    String? codigo = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$login",
  "codigo": "$codigo",
  "newPassword": "$senha"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'alterar senha',
      apiUrl: 'https://codeflowbr.online:8888/api/v1/account/newpassword',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? balanceAli(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.wallet.balanceAli''',
      ));
  static double? balanceRef(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.wallet.balanceRef''',
      ));
  static String? walletId(dynamic response) => castToType<String>(getJsonField(
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
  static String? senhaTransacao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.wallet.transactionPassword''',
      ));
}

class BuscarLocaisCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? cidade = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscarLocais',
      apiUrl: 'https://codeflowbr.online:8888/api/v1/shop/locations/$cidade',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'cidade': cidade,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? latlng(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].latLng''',
      ));
}

class ExcluirContaCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? accountId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'excluirConta',
      apiUrl:
          'https://codeflowbr.online:8888/api/v1/account/exclude/$accountId',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? latlng(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].latLng''',
      ));
}

class BuscarExtratosPorAccountIdCall {
  static Future<ApiCallResponse> call({
    String? accountId = '',
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscarExtratosPorAccountId',
      apiUrl:
          'https://codeflowbr.online:8888/api/v1/extract/receiver/$accountId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'accountId': accountId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<double>? valor(dynamic response) => (getJsonField(
        response,
        r'''$[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? data(dynamic response) => (getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? senderId(dynamic response) => getJsonField(
        response,
        r'''$[:].sender''',
        true,
      ) as List?;
  static List? receiverId(dynamic response) => getJsonField(
        response,
        r'''$[:].receiver''',
        true,
      ) as List?;
  static List<String>? befeficio(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? isDeposit(dynamic response) => getJsonField(
        response,
        r'''$[:].deposit''',
        true,
      ) as List?;
  static List? isCashout(dynamic response) => getJsonField(
        response,
        r'''$[:].cashout''',
        true,
      ) as List?;
}

class VendaLojistaCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? senderID = '',
    String? receiverId = '',
    String? password = '',
    double? value,
    String? type = '',
    String? date = '',
  }) async {
    final ffApiRequestBody = '''
{
  "sender": "$senderID",
  "receiver": "$receiverId",
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
      isStreamingApi: false,
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
    String? lat = '',
    String? lng = '',
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
    "active": true,
    "address": {
      "lat": "$lat",
      "lng": "$lng",
      "latlng":"$lat,$lng",
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
    "percentage": 5.99,
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
      isStreamingApi: false,
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
      isStreamingApi: false,
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
  static String? codigoPrincipal(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.atividade_principal[:].code''',
      ));
  static List<String>? codigoSecundario(dynamic response) => (getJsonField(
        response,
        r'''$.atividades_secundarias[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CeplatlngCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
    String? rua = '',
    String? numero = '',
    String? cidade = '',
    String? estado = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ceplatlng',
      apiUrl:
          'https://maps.googleapis.com/maps/api/geocode/json?address=$rua+$numero+$cidade+$estado+BR&key=AIzaSyDFm2b2g3uS8UObYRoF6-1DOjXlpdZ7YZg',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cep': cep,
        'rua': rua,
        'numero': numero,
        'cidade': cidade,
        'estado': estado,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? lat(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.results[:].geometry.location.lat''',
      ));
  static double? lng(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.results[:].geometry.location.lng''',
      ));
}

class TrocarSenhaCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? id = '',
    String? transactionPassword = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "$id",
  "transactionPassword": "$transactionPassword"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'trocarSenha',
      apiUrl: 'https://codeflowbr.online:8888/api/v1/wallet/transaction',
      callType: ApiCallType.PUT,
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
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class WithdrawCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? shopid = '',
    String? password = '',
    double? value,
    String? date = '',
  }) async {
    final ffApiRequestBody = '''
{
  "shopId": "$shopid",
  "password": "$password",
  "value": $value,
  "date": "$date",
  "payed": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'withdraw',
      apiUrl: 'https://codeflowbr.online:8888/api/v1/withdraw/shop',
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
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarCidadesPorLatLngDoubleCall {
  static Future<ApiCallResponse> call({
    double? lat,
    double? long,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscarCidadesPorLatLngDouble',
      apiUrl:
          'https://nominatim.openstreetmap.org/reverse?format=json&lat=$lat&lon=$long&zoom=18&addressdetails=1',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'lat': lat,
        'long': long,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.address.town''',
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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

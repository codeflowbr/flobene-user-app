// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? uid,
    String? displayName,
    String? createTime,
    String? walletId,
    String? accountId,
    String? idempresa,
    String? empresaName,
    String? role,
  })  : _uid = uid,
        _displayName = displayName,
        _createTime = createTime,
        _walletId = walletId,
        _accountId = accountId,
        _idempresa = idempresa,
        _empresaName = empresaName,
        _role = role;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;
  bool hasUid() => _uid != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;
  bool hasDisplayName() => _displayName != null;

  // "create_time" field.
  String? _createTime;
  String get createTime => _createTime ?? '';
  set createTime(String? val) => _createTime = val;
  bool hasCreateTime() => _createTime != null;

  // "wallet_id" field.
  String? _walletId;
  String get walletId => _walletId ?? '';
  set walletId(String? val) => _walletId = val;
  bool hasWalletId() => _walletId != null;

  // "accountId" field.
  String? _accountId;
  String get accountId => _accountId ?? '';
  set accountId(String? val) => _accountId = val;
  bool hasAccountId() => _accountId != null;

  // "idempresa" field.
  String? _idempresa;
  String get idempresa => _idempresa ?? '';
  set idempresa(String? val) => _idempresa = val;
  bool hasIdempresa() => _idempresa != null;

  // "empresaName" field.
  String? _empresaName;
  String get empresaName => _empresaName ?? '';
  set empresaName(String? val) => _empresaName = val;
  bool hasEmpresaName() => _empresaName != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;
  bool hasRole() => _role != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        uid: data['uid'] as String?,
        displayName: data['display_name'] as String?,
        createTime: data['create_time'] as String?,
        walletId: data['wallet_id'] as String?,
        accountId: data['accountId'] as String?,
        idempresa: data['idempresa'] as String?,
        empresaName: data['empresaName'] as String?,
        role: data['role'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'uid': _uid,
        'display_name': _displayName,
        'create_time': _createTime,
        'wallet_id': _walletId,
        'accountId': _accountId,
        'idempresa': _idempresa,
        'empresaName': _empresaName,
        'role': _role,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'create_time': serializeParam(
          _createTime,
          ParamType.String,
        ),
        'wallet_id': serializeParam(
          _walletId,
          ParamType.String,
        ),
        'accountId': serializeParam(
          _accountId,
          ParamType.String,
        ),
        'idempresa': serializeParam(
          _idempresa,
          ParamType.String,
        ),
        'empresaName': serializeParam(
          _empresaName,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        createTime: deserializeParam(
          data['create_time'],
          ParamType.String,
          false,
        ),
        walletId: deserializeParam(
          data['wallet_id'],
          ParamType.String,
          false,
        ),
        accountId: deserializeParam(
          data['accountId'],
          ParamType.String,
          false,
        ),
        idempresa: deserializeParam(
          data['idempresa'],
          ParamType.String,
          false,
        ),
        empresaName: deserializeParam(
          data['empresaName'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        uid == other.uid &&
        displayName == other.displayName &&
        createTime == other.createTime &&
        walletId == other.walletId &&
        accountId == other.accountId &&
        idempresa == other.idempresa &&
        empresaName == other.empresaName &&
        role == other.role;
  }

  @override
  int get hashCode => const ListEquality().hash([
        uid,
        displayName,
        createTime,
        walletId,
        accountId,
        idempresa,
        empresaName,
        role
      ]);
}

UserStruct createUserStruct({
  String? uid,
  String? displayName,
  String? createTime,
  String? walletId,
  String? accountId,
  String? idempresa,
  String? empresaName,
  String? role,
}) =>
    UserStruct(
      uid: uid,
      displayName: displayName,
      createTime: createTime,
      walletId: walletId,
      accountId: accountId,
      idempresa: idempresa,
      empresaName: empresaName,
      role: role,
    );

// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShopStruct extends BaseStruct {
  ShopStruct({
    String? razaoSocial,
    String? fantasyName,
    String? cnpj,
    String? phone,
    List<String>? beneficio,
    AddressStruct? address,
  })  : _razaoSocial = razaoSocial,
        _fantasyName = fantasyName,
        _cnpj = cnpj,
        _phone = phone,
        _beneficio = beneficio,
        _address = address;

  // "razaoSocial" field.
  String? _razaoSocial;
  String get razaoSocial => _razaoSocial ?? '';
  set razaoSocial(String? val) => _razaoSocial = val;
  bool hasRazaoSocial() => _razaoSocial != null;

  // "fantasyName" field.
  String? _fantasyName;
  String get fantasyName => _fantasyName ?? '';
  set fantasyName(String? val) => _fantasyName = val;
  bool hasFantasyName() => _fantasyName != null;

  // "cnpj" field.
  String? _cnpj;
  String get cnpj => _cnpj ?? '';
  set cnpj(String? val) => _cnpj = val;
  bool hasCnpj() => _cnpj != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;
  bool hasPhone() => _phone != null;

  // "beneficio" field.
  List<String>? _beneficio;
  List<String> get beneficio => _beneficio ?? const [];
  set beneficio(List<String>? val) => _beneficio = val;
  void updateBeneficio(Function(List<String>) updateFn) =>
      updateFn(_beneficio ??= []);
  bool hasBeneficio() => _beneficio != null;

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  set address(AddressStruct? val) => _address = val;
  void updateAddress(Function(AddressStruct) updateFn) =>
      updateFn(_address ??= AddressStruct());
  bool hasAddress() => _address != null;

  static ShopStruct fromMap(Map<String, dynamic> data) => ShopStruct(
        razaoSocial: data['razaoSocial'] as String?,
        fantasyName: data['fantasyName'] as String?,
        cnpj: data['cnpj'] as String?,
        phone: data['phone'] as String?,
        beneficio: getDataList(data['beneficio']),
        address: AddressStruct.maybeFromMap(data['address']),
      );

  static ShopStruct? maybeFromMap(dynamic data) =>
      data is Map ? ShopStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'razaoSocial': _razaoSocial,
        'fantasyName': _fantasyName,
        'cnpj': _cnpj,
        'phone': _phone,
        'beneficio': _beneficio,
        'address': _address?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'razaoSocial': serializeParam(
          _razaoSocial,
          ParamType.String,
        ),
        'fantasyName': serializeParam(
          _fantasyName,
          ParamType.String,
        ),
        'cnpj': serializeParam(
          _cnpj,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'beneficio': serializeParam(
          _beneficio,
          ParamType.String,
          true,
        ),
        'address': serializeParam(
          _address,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ShopStruct fromSerializableMap(Map<String, dynamic> data) =>
      ShopStruct(
        razaoSocial: deserializeParam(
          data['razaoSocial'],
          ParamType.String,
          false,
        ),
        fantasyName: deserializeParam(
          data['fantasyName'],
          ParamType.String,
          false,
        ),
        cnpj: deserializeParam(
          data['cnpj'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        beneficio: deserializeParam<String>(
          data['beneficio'],
          ParamType.String,
          true,
        ),
        address: deserializeStructParam(
          data['address'],
          ParamType.DataStruct,
          false,
          structBuilder: AddressStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ShopStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ShopStruct &&
        razaoSocial == other.razaoSocial &&
        fantasyName == other.fantasyName &&
        cnpj == other.cnpj &&
        phone == other.phone &&
        listEquality.equals(beneficio, other.beneficio) &&
        address == other.address;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([razaoSocial, fantasyName, cnpj, phone, beneficio, address]);
}

ShopStruct createShopStruct({
  String? razaoSocial,
  String? fantasyName,
  String? cnpj,
  String? phone,
  AddressStruct? address,
}) =>
    ShopStruct(
      razaoSocial: razaoSocial,
      fantasyName: fantasyName,
      cnpj: cnpj,
      phone: phone,
      address: address ?? AddressStruct(),
    );

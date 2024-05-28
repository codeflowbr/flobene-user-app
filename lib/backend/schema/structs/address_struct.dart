// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends BaseStruct {
  AddressStruct({
    String? street,
    String? number,
    String? neighborhood,
    String? city,
    String? state,
  })  : _street = street,
        _number = number,
        _neighborhood = neighborhood,
        _city = city,
        _state = state;

  // "street" field.
  String? _street;
  String get street => _street ?? '';
  set street(String? val) => _street = val;
  bool hasStreet() => _street != null;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  set number(String? val) => _number = val;
  bool hasNumber() => _number != null;

  // "neighborhood" field.
  String? _neighborhood;
  String get neighborhood => _neighborhood ?? '';
  set neighborhood(String? val) => _neighborhood = val;
  bool hasNeighborhood() => _neighborhood != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;
  bool hasState() => _state != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        street: data['street'] as String?,
        number: data['number'] as String?,
        neighborhood: data['neighborhood'] as String?,
        city: data['city'] as String?,
        state: data['state'] as String?,
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'street': _street,
        'number': _number,
        'neighborhood': _neighborhood,
        'city': _city,
        'state': _state,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'street': serializeParam(
          _street,
          ParamType.String,
        ),
        'number': serializeParam(
          _number,
          ParamType.String,
        ),
        'neighborhood': serializeParam(
          _neighborhood,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
        street: deserializeParam(
          data['street'],
          ParamType.String,
          false,
        ),
        number: deserializeParam(
          data['number'],
          ParamType.String,
          false,
        ),
        neighborhood: deserializeParam(
          data['neighborhood'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressStruct &&
        street == other.street &&
        number == other.number &&
        neighborhood == other.neighborhood &&
        city == other.city &&
        state == other.state;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([street, number, neighborhood, city, state]);
}

AddressStruct createAddressStruct({
  String? street,
  String? number,
  String? neighborhood,
  String? city,
  String? state,
}) =>
    AddressStruct(
      street: street,
      number: number,
      neighborhood: neighborhood,
      city: city,
      state: state,
    );

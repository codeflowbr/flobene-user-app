// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MapStruct extends BaseStruct {
  MapStruct({
    String? title,
    String? latLng,
    String? description,
    ShopStruct? shop,
  })  : _title = title,
        _latLng = latLng,
        _description = description,
        _shop = shop;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "latLng" field.
  String? _latLng;
  String get latLng => _latLng ?? '';
  set latLng(String? val) => _latLng = val;

  bool hasLatLng() => _latLng != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "shop" field.
  ShopStruct? _shop;
  ShopStruct get shop => _shop ?? ShopStruct();
  set shop(ShopStruct? val) => _shop = val;

  void updateShop(Function(ShopStruct) updateFn) {
    updateFn(_shop ??= ShopStruct());
  }

  bool hasShop() => _shop != null;

  static MapStruct fromMap(Map<String, dynamic> data) => MapStruct(
        title: data['title'] as String?,
        latLng: data['latLng'] as String?,
        description: data['description'] as String?,
        shop: ShopStruct.maybeFromMap(data['shop']),
      );

  static MapStruct? maybeFromMap(dynamic data) =>
      data is Map ? MapStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'latLng': _latLng,
        'description': _description,
        'shop': _shop?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'latLng': serializeParam(
          _latLng,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'shop': serializeParam(
          _shop,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static MapStruct fromSerializableMap(Map<String, dynamic> data) => MapStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        latLng: deserializeParam(
          data['latLng'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        shop: deserializeStructParam(
          data['shop'],
          ParamType.DataStruct,
          false,
          structBuilder: ShopStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MapStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MapStruct &&
        title == other.title &&
        latLng == other.latLng &&
        description == other.description &&
        shop == other.shop;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([title, latLng, description, shop]);
}

MapStruct createMapStruct({
  String? title,
  String? latLng,
  String? description,
  ShopStruct? shop,
}) =>
    MapStruct(
      title: title,
      latLng: latLng,
      description: description,
      shop: shop ?? ShopStruct(),
    );

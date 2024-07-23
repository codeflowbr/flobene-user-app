// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GoogleMapDataStruct extends BaseStruct {
  GoogleMapDataStruct({
    LatLng? latLng,
    String? title,
    String? description,
  })  : _latLng = latLng,
        _title = title,
        _description = description;

  // "latLng" field.
  LatLng? _latLng;
  LatLng? get latLng => _latLng;
  set latLng(LatLng? val) => _latLng = val;

  bool hasLatLng() => _latLng != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  static GoogleMapDataStruct fromMap(Map<String, dynamic> data) =>
      GoogleMapDataStruct(
        latLng: data['latLng'] as LatLng?,
        title: data['title'] as String?,
        description: data['description'] as String?,
      );

  static GoogleMapDataStruct? maybeFromMap(dynamic data) => data is Map
      ? GoogleMapDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'latLng': _latLng,
        'title': _title,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'latLng': serializeParam(
          _latLng,
          ParamType.LatLng,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static GoogleMapDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      GoogleMapDataStruct(
        latLng: deserializeParam(
          data['latLng'],
          ParamType.LatLng,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GoogleMapDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GoogleMapDataStruct &&
        latLng == other.latLng &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([latLng, title, description]);
}

GoogleMapDataStruct createGoogleMapDataStruct({
  LatLng? latLng,
  String? title,
  String? description,
}) =>
    GoogleMapDataStruct(
      latLng: latLng,
      title: title,
      description: description,
    );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConfiguracoesPageStruct extends BaseStruct {
  ConfiguracoesPageStruct({
    bool? switchMaterialYou,
  }) : _switchMaterialYou = switchMaterialYou;

  // "Switch_MaterialYou" field.
  bool? _switchMaterialYou;
  bool get switchMaterialYou => _switchMaterialYou ?? false;
  set switchMaterialYou(bool? val) => _switchMaterialYou = val;

  bool hasSwitchMaterialYou() => _switchMaterialYou != null;

  static ConfiguracoesPageStruct fromMap(Map<String, dynamic> data) =>
      ConfiguracoesPageStruct(
        switchMaterialYou: data['Switch_MaterialYou'] as bool?,
      );

  static ConfiguracoesPageStruct? maybeFromMap(dynamic data) => data is Map
      ? ConfiguracoesPageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Switch_MaterialYou': _switchMaterialYou,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Switch_MaterialYou': serializeParam(
          _switchMaterialYou,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ConfiguracoesPageStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ConfiguracoesPageStruct(
        switchMaterialYou: deserializeParam(
          data['Switch_MaterialYou'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ConfiguracoesPageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConfiguracoesPageStruct &&
        switchMaterialYou == other.switchMaterialYou;
  }

  @override
  int get hashCode => const ListEquality().hash([switchMaterialYou]);
}

ConfiguracoesPageStruct createConfiguracoesPageStruct({
  bool? switchMaterialYou,
}) =>
    ConfiguracoesPageStruct(
      switchMaterialYou: switchMaterialYou,
    );

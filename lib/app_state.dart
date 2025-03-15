import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _TemaState = prefs.containsKey('ff_TemaState')
          ? deserializeEnum<TemasEnums>(prefs.getString('ff_TemaState'))
          : _TemaState;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_ConfiguracoesController')) {
        try {
          final serializedData =
              prefs.getString('ff_ConfiguracoesController') ?? '{}';
          _ConfiguracoesController =
              ConfiguracoesPageStruct.fromSerializableMap(
                  jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _IdiomasState = prefs.containsKey('ff_IdiomasState')
          ? deserializeEnum<IdiomaEnums>(prefs.getString('ff_IdiomasState'))
          : _IdiomasState;
    });
    _safeInit(() {
      _currentVersion = prefs.getString('ff_currentVersion') ?? _currentVersion;
    });
    _safeInit(() {
      _lastVersionSeen =
          prefs.getString('ff_lastVersionSeen') ?? _lastVersionSeen;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  TemasEnums? _TemaState = TemasEnums.Sistema;
  TemasEnums? get TemaState => _TemaState;
  set TemaState(TemasEnums? value) {
    _TemaState = value;
    value != null
        ? prefs.setString('ff_TemaState', value.serialize())
        : prefs.remove('ff_TemaState');
  }

  RotasEnums? _RotasController = RotasEnums.inicio;
  RotasEnums? get RotasController => _RotasController;
  set RotasController(RotasEnums? value) {
    _RotasController = value;
  }

  ConfiguracoesPageStruct _ConfiguracoesController =
      ConfiguracoesPageStruct.fromSerializableMap(
          jsonDecode('{\"Switch_MaterialYou\":\"false\"}'));
  ConfiguracoesPageStruct get ConfiguracoesController =>
      _ConfiguracoesController;
  set ConfiguracoesController(ConfiguracoesPageStruct value) {
    _ConfiguracoesController = value;
    prefs.setString('ff_ConfiguracoesController', value.serialize());
  }

  void updateConfiguracoesControllerStruct(
      Function(ConfiguracoesPageStruct) updateFn) {
    updateFn(_ConfiguracoesController);
    prefs.setString(
        'ff_ConfiguracoesController', _ConfiguracoesController.serialize());
  }

  IdiomaEnums? _IdiomasState = IdiomaEnums.Portuguese;
  IdiomaEnums? get IdiomasState => _IdiomasState;
  set IdiomasState(IdiomaEnums? value) {
    _IdiomasState = value;
    value != null
        ? prefs.setString('ff_IdiomasState', value.serialize())
        : prefs.remove('ff_IdiomasState');
  }

  String _currentVersion = '';
  String get currentVersion => _currentVersion;
  set currentVersion(String value) {
    _currentVersion = value;
    prefs.setString('ff_currentVersion', value);
  }

  String _lastVersionSeen = '';
  String get lastVersionSeen => _lastVersionSeen;
  set lastVersionSeen(String value) {
    _lastVersionSeen = value;
    prefs.setString('ff_lastVersionSeen', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

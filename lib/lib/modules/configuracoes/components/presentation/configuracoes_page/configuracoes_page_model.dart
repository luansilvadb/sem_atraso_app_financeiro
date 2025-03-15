import '/flutter_flow/flutter_flow_util.dart';
import '/lib/modules/configuracoes/components/presentation/app_configuracoes/app_configuracoes_widget.dart';
import 'configuracoes_page_widget.dart' show ConfiguracoesPageWidget;
import 'package:flutter/material.dart';

class ConfiguracoesPageModel extends FlutterFlowModel<ConfiguracoesPageWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for app_configuracoes component.
  late AppConfiguracoesModel appConfiguracoesModel;

  @override
  void initState(BuildContext context) {
    appConfiguracoesModel = createModel(context, () => AppConfiguracoesModel());
  }

  @override
  void dispose() {
    appConfiguracoesModel.dispose();
  }
}

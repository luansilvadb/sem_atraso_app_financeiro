import '/flutter_flow/flutter_flow_util.dart';
import '/lib/core/navigation/lbl_titulos/lbl_titulos_widget.dart';
import '/lib/core/navigation/rotas_controller/rotas_controller_widget.dart';
import '/lib/shared/layout/app_layout/app_layout_widget.dart';
import 'main_widget.dart' show MainWidget;
import 'package:flutter/material.dart';

class MainModel extends FlutterFlowModel<MainWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for lbl_titulos component.
  late LblTitulosModel lblTitulosModel;
  // Model for rotas_controller component.
  late RotasControllerModel rotasControllerModel;
  // Model for app_layout component.
  late AppLayoutModel appLayoutModel;

  @override
  void initState(BuildContext context) {
    lblTitulosModel = createModel(context, () => LblTitulosModel());
    rotasControllerModel = createModel(context, () => RotasControllerModel());
    appLayoutModel = createModel(context, () => AppLayoutModel());
  }

  @override
  void dispose() {
    lblTitulosModel.dispose();
    rotasControllerModel.dispose();
    appLayoutModel.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import '/lib/modules/sobre/presentation/app_sobre/app_sobre_widget.dart';
import 'sobre_page_widget.dart' show SobrePageWidget;
import 'package:flutter/material.dart';

class SobrePageModel extends FlutterFlowModel<SobrePageWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for app_sobre component.
  late AppSobreModel appSobreModel;

  @override
  void initState(BuildContext context) {
    appSobreModel = createModel(context, () => AppSobreModel());
  }

  @override
  void dispose() {
    appSobreModel.dispose();
  }
}

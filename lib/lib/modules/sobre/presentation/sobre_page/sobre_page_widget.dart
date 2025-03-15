import '/flutter_flow/flutter_flow_util.dart';
import '/lib/modules/sobre/presentation/app_sobre/app_sobre_widget.dart';
import 'package:flutter/material.dart';
import 'sobre_page_model.dart';
export 'sobre_page_model.dart';

class SobrePageWidget extends StatefulWidget {
  const SobrePageWidget({super.key});

  @override
  State<SobrePageWidget> createState() => _SobrePageWidgetState();
}

class _SobrePageWidgetState extends State<SobrePageWidget> {
  late SobrePageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SobrePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return wrapWithModel(
      model: _model.appSobreModel,
      updateCallback: () => safeSetState(() {}),
      child: AppSobreWidget(),
    );
  }
}

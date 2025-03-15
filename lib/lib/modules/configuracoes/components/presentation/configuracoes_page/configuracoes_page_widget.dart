import '/flutter_flow/flutter_flow_util.dart';
import '/lib/modules/configuracoes/components/presentation/app_configuracoes/app_configuracoes_widget.dart';
import 'package:flutter/material.dart';
import 'configuracoes_page_model.dart';
export 'configuracoes_page_model.dart';

class ConfiguracoesPageWidget extends StatefulWidget {
  const ConfiguracoesPageWidget({super.key});

  @override
  State<ConfiguracoesPageWidget> createState() =>
      _ConfiguracoesPageWidgetState();
}

class _ConfiguracoesPageWidgetState extends State<ConfiguracoesPageWidget> {
  late ConfiguracoesPageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfiguracoesPageModel());

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
      model: _model.appConfiguracoesModel,
      updateCallback: () => safeSetState(() {}),
      child: AppConfiguracoesWidget(),
    );
  }
}

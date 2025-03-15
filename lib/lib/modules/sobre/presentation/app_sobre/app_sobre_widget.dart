import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'app_sobre_model.dart';
export 'app_sobre_model.dart';

class AppSobreWidget extends StatefulWidget {
  const AppSobreWidget({super.key});

  @override
  State<AppSobreWidget> createState() => _AppSobreWidgetState();
}

class _AppSobreWidgetState extends State<AppSobreWidget> {
  late AppSobreModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppSobreModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: (MediaQuery.sizeOf(context).width >= kBreakpointSmall)
          ? Axis.horizontal
          : Axis.vertical,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 320.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Text(
            FFLocalizations.of(context).getText(
              '20gkc2en' /* Hello World */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Container(
          width: 320.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Text(
            FFLocalizations.of(context).getText(
              '25rnu5dl' /* Hello World */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ],
    );
  }
}

import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'modo_tema_model.dart';
export 'modo_tema_model.dart';

class ModoTemaWidget extends StatefulWidget {
  const ModoTemaWidget({super.key});

  @override
  State<ModoTemaWidget> createState() => _ModoTemaWidgetState();
}

class _ModoTemaWidgetState extends State<ModoTemaWidget> {
  late ModoTemaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModoTemaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 700.0,
      height: 70.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8.0),
          bottomRight: Radius.circular(8.0),
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
        ),
      ),
      child: Container(
        width: 700.0,
        height: 70.0,
        child: Stack(
          children: [
            Container(
              width: 700.0,
              height: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Icon(
                              Icons.dark_mode,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 32.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'popflkyw' /* Modo de tema */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
                    .divide(SizedBox(width: 10.0))
                    .addToStart(SizedBox(width: 10.0)),
              ),
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(),
                ),
                Align(
                  alignment: AlignmentDirectional(0.9, 0.0),
                  child: MouseRegion(
                    opaque: false,
                    cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                    child: FlutterFlowDropDown<TemasEnums>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<TemasEnums>(
                        _model.dropDownValue ??= FFAppState().TemaState,
                      ),
                      options: List<TemasEnums>.from(TemasEnums.values),
                      optionLabels: [
                        FFLocalizations.of(context).getText(
                          '9jmm4ocq' /* Sistema */,
                        ),
                        FFLocalizations.of(context).getText(
                          '2ig1w6on' /* Claro */,
                        ),
                        FFLocalizations.of(context).getText(
                          're4x17t5' /* Escuro */,
                        )
                      ],
                      onChanged: (val) async {
                        safeSetState(() => _model.dropDownValue = val);
                        if (_model.dropDownValue == TemasEnums.Sistema) {
                          FFAppState().TemaState = TemasEnums.Sistema;
                          safeSetState(() {});
                          setDarkModeSetting(context, ThemeMode.system);
                        } else if (_model.dropDownValue == TemasEnums.Claro) {
                          FFAppState().TemaState = TemasEnums.Claro;
                          safeSetState(() {});
                          setDarkModeSetting(context, ThemeMode.light);
                        } else if (_model.dropDownValue == TemasEnums.Escuro) {
                          FFAppState().TemaState = TemasEnums.Escuro;
                          safeSetState(() {});
                          setDarkModeSetting(context, ThemeMode.dark);
                        } else {
                          FFAppState().TemaState = TemasEnums.Sistema;
                          safeSetState(() {});
                          setDarkModeSetting(context, ThemeMode.system);
                        }
                      },
                      width: 150.0,
                      height: 40.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      hintText: FFAppState().TemaState?.name,
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor: _model.mouseRegionHovered
                          ? FlutterFlowTheme.of(context).selectDropDown
                          : FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 0.0,
                      borderColor: FlutterFlowTheme.of(context).scroll,
                      borderWidth: 0.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      hidesUnderline: true,
                      isOverButton: false,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                    onEnter: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered = true);
                    }),
                    onExit: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered = false);
                    }),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

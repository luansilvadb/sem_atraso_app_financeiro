import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'idioma_dropdown_model.dart';
export 'idioma_dropdown_model.dart';

class IdiomaDropdownWidget extends StatefulWidget {
  const IdiomaDropdownWidget({super.key});

  @override
  State<IdiomaDropdownWidget> createState() => _IdiomaDropdownWidgetState();
}

class _IdiomaDropdownWidgetState extends State<IdiomaDropdownWidget> {
  late IdiomaDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IdiomaDropdownModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 700.0,
          height: 70.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
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
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
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
                                  Icons.language_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                                  '7vfd5t6h' /* Idioma */,
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
                        child: FlutterFlowDropDown<IdiomaEnums>(
                          controller: _model.dropDownValueController ??=
                              FormFieldController<IdiomaEnums>(
                            _model.dropDownValue ??= FFAppState().IdiomasState,
                          ),
                          options: List<IdiomaEnums>.from(IdiomaEnums.values),
                          optionLabels: [
                            FFLocalizations.of(context).getText(
                              'raw4b2fd' /* Português */,
                            ),
                            FFLocalizations.of(context).getText(
                              '8tif2581' /* Inglês */,
                            ),
                            FFLocalizations.of(context).getText(
                              'oddgsoom' /*  */,
                            )
                          ],
                          onChanged: (val) async {
                            safeSetState(() => _model.dropDownValue = val);
                            if (_model.dropDownValue ==
                                IdiomaEnums.Portuguese) {
                              FFAppState().IdiomasState =
                                  IdiomaEnums.Portuguese;
                              safeSetState(() {});
                              setAppLanguage(context, 'pt');
                            } else if (_model.dropDownValue ==
                                IdiomaEnums.English) {
                              FFAppState().IdiomasState = IdiomaEnums.English;
                              safeSetState(() {});
                              setAppLanguage(context, 'en');
                            } else {
                              FFAppState().IdiomasState =
                                  IdiomaEnums.Portuguese;
                              safeSetState(() {});
                              setAppLanguage(context, 'pt');
                            }
                          },
                          width: 150.0,
                          height: 40.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: FFAppState().IdiomasState?.name,
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          fillColor: _model.mouseRegionHovered
                              ? FlutterFlowTheme.of(context).selectDropDown
                              : FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).scroll,
                          borderWidth: 0.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
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
        ),
      ],
    );
  }
}

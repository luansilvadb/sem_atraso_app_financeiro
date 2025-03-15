import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'footer_model.dart';
export 'footer_model.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({super.key});

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  late FooterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FooterModel());

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

    return ListView(
      padding: EdgeInsets.zero,
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 303.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              border: Border.all(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: MouseRegion(
                    opaque: false,
                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().RotasController = RotasEnums.Login;
                              FFAppState().update(() {});
                            },
                            child: Container(
                              width: 303.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: () {
                                  if (FFAppState().RotasController ==
                                      RotasEnums.Login) {
                                    return FlutterFlowTheme.of(context)
                                        .selectBtn;
                                  } else if (_model
                                      .editConecteSeMouseRegionHovered) {
                                    return FlutterFlowTheme.of(context)
                                        .selectHoverBtn;
                                  } else {
                                    return Color(0x00000000);
                                  }
                                }(),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(8.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(8.0),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 30.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50.0,
                                      decoration: BoxDecoration(),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.google,
                                        color: valueOrDefault<Color>(
                                          FFAppState().RotasController ==
                                                  RotasEnums.Login
                                              ? FlutterFlowTheme.of(context)
                                                  .selectTextBtn
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          FlutterFlowTheme.of(context).iconBtn,
                                        ),
                                        size: 24.0,
                                      ),
                                    ),
                                    Container(
                                      height: 50.0,
                                      decoration: BoxDecoration(),
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'lfvo2h5x' /* Conecte-se */,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Inter',
                                              color: valueOrDefault<Color>(
                                                FFAppState().RotasController ==
                                                        RotasEnums.Login
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .selectTextBtn
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                              ),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ]
                                      .divide(SizedBox(width: 10.0))
                                      .addToStart(SizedBox(width: 10.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    onEnter: ((event) async {
                      safeSetState(
                          () => _model.editConecteSeMouseRegionHovered = true);
                    }),
                    onExit: ((event) async {
                      safeSetState(
                          () => _model.editConecteSeMouseRegionHovered = false);
                    }),
                  ),
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().RotasController =
                                RotasEnums.Configuracoes;
                            FFAppState().update(() {});
                          },
                          child: Container(
                            width: 303.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: () {
                                if (FFAppState().RotasController ==
                                    RotasEnums.Configuracoes) {
                                  return FlutterFlowTheme.of(context).selectBtn;
                                } else if (_model
                                    .editConfiguracoesMouseRegionHovered) {
                                  return FlutterFlowTheme.of(context)
                                      .selectHoverBtn;
                                } else {
                                  return Color(0x00000000);
                                }
                              }(),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(8.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(8.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 30.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Icon(
                                      Icons.settings,
                                      color: valueOrDefault<Color>(
                                        FFAppState().RotasController ==
                                                RotasEnums.Configuracoes
                                            ? FlutterFlowTheme.of(context)
                                                .selectTextBtn
                                            : FlutterFlowTheme.of(context)
                                                .primaryText,
                                        FlutterFlowTheme.of(context).iconBtn,
                                      ),
                                      size: 24.0,
                                    ),
                                  ),
                                  Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'rofcjoaw' /* Configurações */,
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Inter',
                                            color: valueOrDefault<Color>(
                                              FFAppState().RotasController ==
                                                      RotasEnums.Configuracoes
                                                  ? FlutterFlowTheme.of(context)
                                                      .selectTextBtn
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                            ),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ]
                                    .divide(SizedBox(width: 10.0))
                                    .addToStart(SizedBox(width: 10.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  onEnter: ((event) async {
                    safeSetState(() =>
                        _model.editConfiguracoesMouseRegionHovered = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() =>
                        _model.editConfiguracoesMouseRegionHovered = false);
                  }),
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().RotasController = RotasEnums.Sobre;
                            FFAppState().update(() {});
                          },
                          child: Container(
                            width: 303.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: () {
                                if (FFAppState().RotasController ==
                                    RotasEnums.Sobre) {
                                  return FlutterFlowTheme.of(context).selectBtn;
                                } else if (_model
                                    .editSobreMouseRegionHovered) {
                                  return FlutterFlowTheme.of(context)
                                      .selectHoverBtn;
                                } else {
                                  return Color(0x00000000);
                                }
                              }(),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(8.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(8.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 30.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Icon(
                                      Icons.info_outline,
                                      color: valueOrDefault<Color>(
                                        FFAppState().RotasController ==
                                                RotasEnums.Sobre
                                            ? FlutterFlowTheme.of(context)
                                                .selectTextBtn
                                            : FlutterFlowTheme.of(context)
                                                .primaryText,
                                        FlutterFlowTheme.of(context).iconBtn,
                                      ),
                                      size: 24.0,
                                    ),
                                  ),
                                  Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'uu6xfutz' /* Sobre */,
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Inter',
                                            color: valueOrDefault<Color>(
                                              FFAppState().RotasController ==
                                                      RotasEnums.Sobre
                                                  ? FlutterFlowTheme.of(context)
                                                      .selectTextBtn
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                            ),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ]
                                    .divide(SizedBox(width: 10.0))
                                    .addToStart(SizedBox(width: 10.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  onEnter: ((event) async {
                    safeSetState(
                        () => _model.editSobreMouseRegionHovered = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(
                        () => _model.editSobreMouseRegionHovered = false);
                  }),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

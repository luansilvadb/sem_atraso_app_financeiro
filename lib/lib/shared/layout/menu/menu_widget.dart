import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  late MenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 0.0, 0.0),
                            child: MouseRegion(
                              opaque: false,
                              cursor:
                                  SystemMouseCursors.click ?? MouseCursor.defer,
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
                                            RotasEnums.inicio;
                                        FFAppState().update(() {});
                                      },
                                      child: Container(
                                        width: 303.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: () {
                                            if (FFAppState().RotasController ==
                                                RotasEnums.inicio) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .selectBtn;
                                            } else if (_model
                                                .inicioMouseRegionHovered) {
                                              return FlutterFlowTheme.of(
                                                      context)
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 30.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                height: 50.0,
                                                decoration: BoxDecoration(),
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Icon(
                                                  Icons.home,
                                                  color: valueOrDefault<Color>(
                                                    FFAppState().RotasController ==
                                                            RotasEnums.inicio
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .selectTextBtn
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    FlutterFlowTheme.of(context)
                                                        .iconBtn,
                                                  ),
                                                  size: 24.0,
                                                ),
                                              ),
                                              Container(
                                                height: 50.0,
                                                decoration: BoxDecoration(),
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'c0ouzox6' /* Início */,
                                                  ),
                                                  textAlign: TextAlign.start,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              FFAppState().RotasController ==
                                                                      RotasEnums
                                                                          .inicio
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .selectTextBtn
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                            ),
                                                            letterSpacing: 0.0,
                                                          ),
                                                ),
                                              ),
                                            ]
                                                .divide(SizedBox(width: 10.0))
                                                .addToStart(
                                                    SizedBox(width: 10.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              onEnter: ((event) async {
                                safeSetState(() =>
                                    _model.inicioMouseRegionHovered = true);
                              }),
                              onExit: ((event) async {
                                safeSetState(() =>
                                    _model.inicioMouseRegionHovered = false);
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
                                          RotasEnums.Transacoes;
                                      FFAppState().update(() {});
                                    },
                                    child: Container(
                                      width: 303.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (FFAppState().RotasController ==
                                              RotasEnums.Transacoes) {
                                            return FlutterFlowTheme.of(context)
                                                .selectBtn;
                                          } else if (_model
                                              .transacoesMouseRegionHovered) {
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
                                          children: [
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                Icons.payments_rounded,
                                                color: valueOrDefault<Color>(
                                                  FFAppState().RotasController ==
                                                          RotasEnums.Transacoes
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .selectTextBtn
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .iconBtn,
                                                ),
                                                size: 24.0,
                                              ),
                                            ),
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'w2ezp5y9' /* Transações */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            FFAppState().RotasController ==
                                                                    RotasEnums
                                                                        .Transacoes
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .selectTextBtn
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ]
                                              .divide(SizedBox(width: 10.0))
                                              .addToStart(
                                                  SizedBox(width: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onEnter: ((event) async {
                              safeSetState(() =>
                                  _model.transacoesMouseRegionHovered = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(() =>
                                  _model.transacoesMouseRegionHovered = false);
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
                                      FFAppState().RotasController =
                                          RotasEnums.Orcamentos;
                                      FFAppState().update(() {});
                                    },
                                    child: Container(
                                      width: 303.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (FFAppState().RotasController ==
                                              RotasEnums.Orcamentos) {
                                            return FlutterFlowTheme.of(context)
                                                .selectBtn;
                                          } else if (_model
                                              .orcamentosMouseRegionHovered) {
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.chartPie,
                                                color: valueOrDefault<Color>(
                                                  FFAppState().RotasController ==
                                                          RotasEnums.Orcamentos
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .selectTextBtn
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .iconBtn,
                                                ),
                                                size: 22.0,
                                              ),
                                            ),
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'vbdmwea2' /* Orçamentos */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            FFAppState().RotasController ==
                                                                    RotasEnums
                                                                        .Orcamentos
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .selectTextBtn
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ]
                                              .divide(SizedBox(width: 10.0))
                                              .addToStart(
                                                  SizedBox(width: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onEnter: ((event) async {
                              safeSetState(() =>
                                  _model.orcamentosMouseRegionHovered = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(() =>
                                  _model.orcamentosMouseRegionHovered = false);
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
                                      FFAppState().RotasController =
                                          RotasEnums.Metas;
                                      FFAppState().update(() {});
                                    },
                                    child: Container(
                                      width: 303.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (FFAppState().RotasController ==
                                              RotasEnums.Metas) {
                                            return FlutterFlowTheme.of(context)
                                                .selectBtn;
                                          } else if (_model
                                              .metasMouseRegionHovered) {
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                Icons.savings,
                                                color: valueOrDefault<Color>(
                                                  FFAppState().RotasController ==
                                                          RotasEnums.Metas
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .selectTextBtn
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .iconBtn,
                                                ),
                                                size: 24.0,
                                              ),
                                            ),
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '66abmjei' /* Metas */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      color:
                                                          valueOrDefault<Color>(
                                                        FFAppState().RotasController ==
                                                                RotasEnums.Metas
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .selectTextBtn
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                      ),
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                          ]
                                              .divide(SizedBox(width: 10.0))
                                              .addToStart(
                                                  SizedBox(width: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.metasMouseRegionHovered = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(
                                  () => _model.metasMouseRegionHovered = false);
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
                                      FFAppState().RotasController =
                                          RotasEnums.Emprestimos;
                                      FFAppState().update(() {});
                                    },
                                    child: Container(
                                      width: 303.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (FFAppState().RotasController ==
                                              RotasEnums.Emprestimos) {
                                            return FlutterFlowTheme.of(context)
                                                .selectBtn;
                                          } else if (_model
                                              .emprestimosMouseRegionHovered) {
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                Icons.unarchive,
                                                color: valueOrDefault<Color>(
                                                  FFAppState().RotasController ==
                                                          RotasEnums.Emprestimos
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .selectTextBtn
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .iconBtn,
                                                ),
                                                size: 24.0,
                                              ),
                                            ),
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ay03l0on' /* Empréstimos */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            FFAppState().RotasController ==
                                                                    RotasEnums
                                                                        .Emprestimos
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .selectTextBtn
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ]
                                              .divide(SizedBox(width: 10.0))
                                              .addToStart(
                                                  SizedBox(width: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onEnter: ((event) async {
                              safeSetState(() =>
                                  _model.emprestimosMouseRegionHovered = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(() =>
                                  _model.emprestimosMouseRegionHovered = false);
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
                                      FFAppState().RotasController =
                                          RotasEnums.Assinaturas;
                                      FFAppState().update(() {});
                                    },
                                    child: Container(
                                      width: 303.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (FFAppState().RotasController ==
                                              RotasEnums.Assinaturas) {
                                            return FlutterFlowTheme.of(context)
                                                .selectBtn;
                                          } else if (_model
                                              .assinaturasMouseRegionHovered) {
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                Icons.swap_horiz_outlined,
                                                color: valueOrDefault<Color>(
                                                  FFAppState().RotasController ==
                                                          RotasEnums.Assinaturas
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .selectTextBtn
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .iconBtn,
                                                ),
                                                size: 24.0,
                                              ),
                                            ),
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'xznpgxba' /* Assinaturas */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            FFAppState().RotasController ==
                                                                    RotasEnums
                                                                        .Assinaturas
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .selectTextBtn
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ]
                                              .divide(SizedBox(width: 10.0))
                                              .addToStart(
                                                  SizedBox(width: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onEnter: ((event) async {
                              safeSetState(() =>
                                  _model.assinaturasMouseRegionHovered = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(() =>
                                  _model.assinaturasMouseRegionHovered = false);
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
                                      FFAppState().RotasController =
                                          RotasEnums.agendado;
                                      FFAppState().update(() {});
                                    },
                                    child: Container(
                                      width: 303.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (FFAppState().RotasController ==
                                              RotasEnums.agendado) {
                                            return FlutterFlowTheme.of(context)
                                                .selectBtn;
                                          } else if (_model
                                              .agendadoMouseRegionHovered) {
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                Icons.today,
                                                color: valueOrDefault<Color>(
                                                  FFAppState().RotasController ==
                                                          RotasEnums.agendado
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .selectTextBtn
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .iconBtn,
                                                ),
                                                size: 24.0,
                                              ),
                                            ),
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'jp8p4p6q' /* Agendado */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            FFAppState().RotasController ==
                                                                    RotasEnums
                                                                        .agendado
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .selectTextBtn
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ]
                                              .divide(SizedBox(width: 10.0))
                                              .addToStart(
                                                  SizedBox(width: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onEnter: ((event) async {
                              safeSetState(() =>
                                  _model.agendadoMouseRegionHovered = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(() =>
                                  _model.agendadoMouseRegionHovered = false);
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
                                      FFAppState().RotasController =
                                          RotasEnums.calendario;
                                      FFAppState().update(() {});
                                    },
                                    child: Container(
                                      width: 303.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (FFAppState().RotasController ==
                                              RotasEnums.calendario) {
                                            return FlutterFlowTheme.of(context)
                                                .selectBtn;
                                          } else if (_model
                                              .calendarioMouseRegionHovered) {
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                Icons.calendar_month,
                                                color: valueOrDefault<Color>(
                                                  FFAppState().RotasController ==
                                                          RotasEnums.calendario
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .selectTextBtn
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .iconBtn,
                                                ),
                                                size: 24.0,
                                              ),
                                            ),
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '0n7le8xn' /* Calendário */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            FFAppState().RotasController ==
                                                                    RotasEnums
                                                                        .calendario
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .selectTextBtn
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ]
                                              .divide(SizedBox(width: 10.0))
                                              .addToStart(
                                                  SizedBox(width: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onEnter: ((event) async {
                              safeSetState(() =>
                                  _model.calendarioMouseRegionHovered = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(() =>
                                  _model.calendarioMouseRegionHovered = false);
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
                                      FFAppState().RotasController =
                                          RotasEnums.RegistroAtividades;
                                      FFAppState().update(() {});
                                    },
                                    child: Container(
                                      width: 303.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (FFAppState().RotasController ==
                                              RotasEnums.RegistroAtividades) {
                                            return FlutterFlowTheme.of(context)
                                                .selectBtn;
                                          } else if (_model
                                              .registroMouseRegionHovered) {
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                Icons.list_alt,
                                                color: valueOrDefault<Color>(
                                                  FFAppState().RotasController ==
                                                          RotasEnums
                                                              .RegistroAtividades
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .selectTextBtn
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .iconBtn,
                                                ),
                                                size: 24.0,
                                              ),
                                            ),
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'osfztw1e' /* Registro de atividades */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            FFAppState().RotasController ==
                                                                    RotasEnums
                                                                        .RegistroAtividades
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .selectTextBtn
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ]
                                              .divide(SizedBox(width: 10.0))
                                              .addToStart(
                                                  SizedBox(width: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onEnter: ((event) async {
                              safeSetState(() =>
                                  _model.registroMouseRegionHovered = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(() =>
                                  _model.registroMouseRegionHovered = false);
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
                                      FFAppState().RotasController =
                                          RotasEnums.TodosOsGastos;
                                      FFAppState().update(() {});
                                    },
                                    child: Container(
                                      width: 303.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (FFAppState().RotasController ==
                                              RotasEnums.TodosOsGastos) {
                                            return FlutterFlowTheme.of(context)
                                                .selectBtn;
                                          } else if (_model
                                              .todosGastosMouseRegionHovered) {
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.scroll,
                                                color: valueOrDefault<Color>(
                                                  FFAppState().RotasController ==
                                                          RotasEnums
                                                              .TodosOsGastos
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .selectTextBtn
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .iconBtn,
                                                ),
                                                size: 24.0,
                                              ),
                                            ),
                                            Container(
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'wtz0hku7' /* Todos os gastos */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            FFAppState().RotasController ==
                                                                    RotasEnums
                                                                        .TodosOsGastos
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .selectTextBtn
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ]
                                              .divide(SizedBox(width: 10.0))
                                              .addToStart(
                                                  SizedBox(width: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onEnter: ((event) async {
                              safeSetState(() =>
                                  _model.todosGastosMouseRegionHovered = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(() =>
                                  _model.todosGastosMouseRegionHovered = false);
                            }),
                          ),
                        ],
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

import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'sub_menu_model.dart';
export 'sub_menu_model.dart';

class SubMenuWidget extends StatefulWidget {
  const SubMenuWidget({super.key});

  @override
  State<SubMenuWidget> createState() => _SubMenuWidgetState();
}

class _SubMenuWidgetState extends State<SubMenuWidget> {
  late SubMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubMenuModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
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
          child: SafeArea(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 303.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(0.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
              child: Container(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                child: ExpandableNotifier(
                  controller: _model.expandableExpandableController,
                  child: ExpandablePanel(
                    header: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit_document,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'cp1ohlqv' /* Editar dados */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ]
                          .divide(SizedBox(width: 10.0))
                          .addToStart(SizedBox(width: 30.0)),
                    ),
                    collapsed: Container(),
                    expanded: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
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
                                        RotasEnums.EditContas;
                                    FFAppState().update(() {});
                                  },
                                  child: Container(
                                    width: 303.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: () {
                                        if (FFAppState().RotasController ==
                                            RotasEnums.EditContas) {
                                          return FlutterFlowTheme.of(context)
                                              .selectBtn;
                                        } else if (_model
                                            .editContasMouseRegionHovered) {
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
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.account_balance_wallet,
                                              color: valueOrDefault<Color>(
                                                FFAppState().RotasController ==
                                                        RotasEnums.EditContas
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
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '5ogkupex' /* Contas */,
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
                                                              RotasEnums
                                                                  .EditContas
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
                                            .addToStart(SizedBox(width: 20.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          onEnter: ((event) async {
                            safeSetState(() =>
                                _model.editContasMouseRegionHovered = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(() =>
                                _model.editContasMouseRegionHovered = false);
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
                                        RotasEnums.EditOrcamentos;
                                    FFAppState().update(() {});
                                  },
                                  child: Container(
                                    width: 303.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: () {
                                        if (FFAppState().RotasController ==
                                            RotasEnums.EditOrcamentos) {
                                          return FlutterFlowTheme.of(context)
                                              .selectBtn;
                                        } else if (_model
                                            .editOrcamentosMouseRegionHovered) {
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
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.chartPie,
                                              color: valueOrDefault<Color>(
                                                FFAppState().RotasController ==
                                                        RotasEnums
                                                            .EditOrcamentos
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
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'l1l7zajn' /* Orçamentos */,
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
                                                              RotasEnums
                                                                  .EditOrcamentos
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
                                            .addToStart(SizedBox(width: 20.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          onEnter: ((event) async {
                            safeSetState(() =>
                                _model.editOrcamentosMouseRegionHovered = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(() => _model
                                .editOrcamentosMouseRegionHovered = false);
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
                                        RotasEnums.EditCategorias;
                                    FFAppState().update(() {});
                                  },
                                  child: Container(
                                    width: 303.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: () {
                                        if (FFAppState().RotasController ==
                                            RotasEnums.EditCategorias) {
                                          return FlutterFlowTheme.of(context)
                                              .selectBtn;
                                        } else if (_model
                                            .editCategoriasMouseRegionHovered) {
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
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.category_sharp,
                                              color: valueOrDefault<Color>(
                                                FFAppState().RotasController ==
                                                        RotasEnums
                                                            .EditCategorias
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
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'k33vbs5l' /* Categorias */,
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
                                                              RotasEnums
                                                                  .EditCategorias
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
                                            .addToStart(SizedBox(width: 20.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          onEnter: ((event) async {
                            safeSetState(() =>
                                _model.editCategoriasMouseRegionHovered = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(() => _model
                                .editCategoriasMouseRegionHovered = false);
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
                                        RotasEnums.EditTitulos;
                                    FFAppState().update(() {});
                                  },
                                  child: Container(
                                    width: 303.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: () {
                                        if (FFAppState().RotasController ==
                                            RotasEnums.EditTitulos) {
                                          return FlutterFlowTheme.of(context)
                                              .selectBtn;
                                        } else if (_model
                                            .editTitulosMouseRegionHovered) {
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
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.text_fields,
                                              color: valueOrDefault<Color>(
                                                FFAppState().RotasController ==
                                                        RotasEnums.EditTitulos
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
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'k9lgyota' /* Títulos */,
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
                                                              RotasEnums
                                                                  .EditTitulos
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
                                            .addToStart(SizedBox(width: 20.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          onEnter: ((event) async {
                            safeSetState(() =>
                                _model.editTitulosMouseRegionHovered = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(() =>
                                _model.editTitulosMouseRegionHovered = false);
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
                                        RotasEnums.EditObjetivos;
                                    FFAppState().update(() {});
                                  },
                                  child: Container(
                                    width: 303.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: () {
                                        if (FFAppState().RotasController ==
                                            RotasEnums.EditObjetivos) {
                                          return FlutterFlowTheme.of(context)
                                              .selectBtn;
                                        } else if (_model
                                            .editObjetivosMouseRegionHovered) {
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
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.savings,
                                              color: valueOrDefault<Color>(
                                                FFAppState().RotasController ==
                                                        RotasEnums.EditObjetivos
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
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '05bt4wet' /* Objetivos */,
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
                                                              RotasEnums
                                                                  .EditObjetivos
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
                                            .addToStart(SizedBox(width: 20.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          onEnter: ((event) async {
                            safeSetState(() =>
                                _model.editObjetivosMouseRegionHovered = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(() =>
                                _model.editObjetivosMouseRegionHovered = false);
                          }),
                        ),
                      ],
                    ),
                    theme: ExpandableThemeData(
                      tapHeaderToExpand: true,
                      tapBodyToExpand: false,
                      tapBodyToCollapse: false,
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      hasIcon: true,
                      expandIcon: Icons.chevron_right_rounded,
                      collapseIcon: Icons.keyboard_arrow_down_rounded,
                      iconSize: 24.0,
                      iconColor: Color(0xFF57636C),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

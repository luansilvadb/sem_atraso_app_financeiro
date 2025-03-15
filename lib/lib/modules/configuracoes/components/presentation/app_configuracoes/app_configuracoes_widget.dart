import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/lib/modules/configuracoes/components/cor_de_destaque/cor_de_destaque_widget.dart';
import '/lib/modules/configuracoes/components/divisor_de_contas/divisor_de_contas_widget.dart';
import '/lib/modules/configuracoes/components/editar_pagina_inicial/editar_pagina_inicial_widget.dart';
import '/lib/modules/configuracoes/components/exportar_arquivo_csv/exportar_arquivo_csv_widget.dart';
import '/lib/modules/configuracoes/components/exportar_arquivo_de_dados/exportar_arquivo_de_dados_widget.dart';
import '/lib/modules/configuracoes/components/google_drive/google_drive_widget.dart';
import '/lib/modules/configuracoes/components/idioma_dropdown/idioma_dropdown_widget.dart';
import '/lib/modules/configuracoes/components/importar_arquivo_csv/importar_arquivo_csv_widget.dart';
import '/lib/modules/configuracoes/components/importar_arquivo_de_dados/importar_arquivo_de_dados_widget.dart';
import '/lib/modules/configuracoes/components/importar_do_google_sheet/importar_do_google_sheet_widget.dart';
import '/lib/modules/configuracoes/components/mais_opcoes/mais_opcoes_widget.dart';
import '/lib/modules/configuracoes/components/material_you/material_you_widget.dart';
import '/lib/modules/configuracoes/components/modo_tema/modo_tema_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'app_configuracoes_model.dart';
export 'app_configuracoes_model.dart';

class AppConfiguracoesWidget extends StatefulWidget {
  const AppConfiguracoesWidget({super.key});

  @override
  State<AppConfiguracoesWidget> createState() => _AppConfiguracoesWidgetState();
}

class _AppConfiguracoesWidgetState extends State<AppConfiguracoesWidget>
    with TickerProviderStateMixin {
  late AppConfiguracoesModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppConfiguracoesModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 23.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 23.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 23.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 23.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 23.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 23.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 700.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 23.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 23.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 900.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 700.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 23.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 23.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: Container(
                width: 700.0,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 700.0,
                      height: 60.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(-0.9, 0.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'fillncw0' /* Tema */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation1']!),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 700.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 6.0,
                                color: Color(0x34000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              wrapWithModel(
                                model: _model.corDeDestaqueModel,
                                updateCallback: () => safeSetState(() {}),
                                child: CorDeDestaqueWidget(),
                              ),
                              Divider(
                                height: 0.0,
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).divisorBtn,
                              ),
                              wrapWithModel(
                                model: _model.materialYouModel,
                                updateCallback: () => safeSetState(() {}),
                                child: MaterialYouWidget(),
                              ),
                              Divider(
                                height: 0.0,
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).divisorBtn,
                              ),
                              wrapWithModel(
                                model: _model.modoTemaModel,
                                updateCallback: () => safeSetState(() {}),
                                child: ModoTemaWidget(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['columnOnPageLoadAnimation']!),
                    Container(
                      width: 700.0,
                      height: 60.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(-0.9, 0.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'xdlpode0' /* Preferências */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation2']!),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 6.0,
                                  color: Color(0x34000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                wrapWithModel(
                                  model: _model.editarPaginaInicialModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: EditarPaginaInicialWidget(),
                                ),
                                Divider(
                                  height: 0.0,
                                  thickness: 1.0,
                                  color:
                                      FlutterFlowTheme.of(context).divisorBtn,
                                ),
                                wrapWithModel(
                                  model: _model.idiomaDropdownModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: IdiomaDropdownWidget(),
                                ),
                                Divider(
                                  height: 0.0,
                                  thickness: 1.0,
                                  color:
                                      FlutterFlowTheme.of(context).divisorBtn,
                                ),
                                wrapWithModel(
                                  model: _model.maisOpcoesModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MaisOpcoesWidget(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation1']!),
                    Container(
                      width: 700.0,
                      height: 60.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(-0.9, 0.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'rxxn3bya' /* Ferramentas e extras */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation3']!),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 9.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                wrapWithModel(
                                  model: _model.divisorDeContasModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: DivisorDeContasWidget(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation2']!),
                    Container(
                      width: 700.0,
                      height: 60.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(-0.9, 0.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'ozafj8eu' /* Importar e exportar */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation4']!),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 9.0,
                                  color: Color(0x50000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                wrapWithModel(
                                  model: _model.exportarArquivoCsvModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ExportarArquivoCsvWidget(),
                                ),
                                Divider(
                                  height: 0.0,
                                  thickness: 1.0,
                                  color:
                                      FlutterFlowTheme.of(context).divisorBtn,
                                ),
                                wrapWithModel(
                                  model: _model.importarArquivoCsvModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ImportarArquivoCsvWidget(),
                                ),
                                Divider(
                                  height: 0.0,
                                  thickness: 1.0,
                                  color:
                                      FlutterFlowTheme.of(context).divisorBtn,
                                ),
                                wrapWithModel(
                                  model: _model.importarDoGoogleSheetModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ImportarDoGoogleSheetWidget(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation3']!),
                    Container(
                      width: 700.0,
                      height: 60.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(-0.9, 0.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '2axik5pc' /* Backups */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation5']!),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 9.0,
                                  color: Color(0x50000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                wrapWithModel(
                                  model: _model.exportarArquivoDeDadosModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ExportarArquivoDeDadosWidget(),
                                ),
                                Divider(
                                  height: 0.0,
                                  thickness: 1.0,
                                  color:
                                      FlutterFlowTheme.of(context).divisorBtn,
                                ),
                                wrapWithModel(
                                  model: _model.importarArquivoDeDadosModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ImportarArquivoDeDadosWidget(),
                                ),
                                Divider(
                                  height: 0.0,
                                  thickness: 1.0,
                                  color:
                                      FlutterFlowTheme.of(context).divisorBtn,
                                ),
                                wrapWithModel(
                                  model: _model.googleDriveModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: GoogleDriveWidget(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation4']!),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

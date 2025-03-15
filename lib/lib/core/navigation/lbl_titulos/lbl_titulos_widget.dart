import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'lbl_titulos_model.dart';
export 'lbl_titulos_model.dart';

class LblTitulosWidget extends StatefulWidget {
  const LblTitulosWidget({super.key});

  @override
  State<LblTitulosWidget> createState() => _LblTitulosWidgetState();
}

class _LblTitulosWidgetState extends State<LblTitulosWidget>
    with TickerProviderStateMixin {
  late LblTitulosModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LblTitulosModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation10': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation11': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation12': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation13': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation14': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation15': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation16': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation17': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 23.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation18': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
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
    context.watch<FFAppState>();

    return Stack(
      children: [
        if (FFAppState().RotasController == RotasEnums.inicio)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                '2xph9g5e' /* Início */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
          ),
        if (FFAppState().RotasController == RotasEnums.Transacoes)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                'aw5a6csx' /* Transações */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
          ),
        if (FFAppState().RotasController == RotasEnums.Orcamentos)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                'g04e60ic' /* Orçamentos */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation3']!),
          ),
        if (FFAppState().RotasController == RotasEnums.Metas)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                '8j922ou1' /* Metas */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation4']!),
          ),
        if (FFAppState().RotasController == RotasEnums.Emprestimos)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                'ucmhzhhy' /* Emprestimos */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation5']!),
          ),
        if (FFAppState().RotasController == RotasEnums.Assinaturas)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                '6m5gs4d3' /* Assinaturas */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation6']!),
          ),
        if (FFAppState().RotasController == RotasEnums.agendado)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                '9oukq4c5' /* Agendado */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation7']!),
          ),
        if (FFAppState().RotasController == RotasEnums.calendario)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                'q0xxnfvv' /* Calendário */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation8']!),
          ),
        if (FFAppState().RotasController == RotasEnums.RegistroAtividades)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                'ceyeq1be' /* Registro de atividades */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation9']!),
          ),
        if (FFAppState().RotasController == RotasEnums.TodosOsGastos)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                'bkiegzhw' /* Todos os gastos */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation10']!),
          ),
        if (FFAppState().RotasController == RotasEnums.EditContas)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                'zxxjzb65' /* Contas */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation11']!),
          ),
        if (FFAppState().RotasController == RotasEnums.EditOrcamentos)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                '2jr6n3t4' /* Orçamentos */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation12']!),
          ),
        if (FFAppState().RotasController == RotasEnums.EditCategorias)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                'wrhfhjli' /* Categorias */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation13']!),
          ),
        if (FFAppState().RotasController == RotasEnums.EditTitulos)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                'edv7y0es' /* Títulos */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation14']!),
          ),
        if (FFAppState().RotasController == RotasEnums.EditObjetivos)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                'ivbelqc4' /* Metas */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation15']!),
          ),
        if (FFAppState().RotasController == RotasEnums.Login)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                'ezbeb5q0' /* Backup de dados */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation16']!),
          ),
        if (FFAppState().RotasController == RotasEnums.Configuracoes)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                'xgx28nuf' /* Configurações */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation17']!),
          ),
        if (FFAppState().RotasController == RotasEnums.Sobre)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                'qjnyss3w' /* Sobre */,
              ),
              minFontSize: 20.0,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation18']!),
          ),
      ],
    );
  }
}
